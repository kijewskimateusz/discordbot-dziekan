import config
import discord
import asyncio
from zlotemysli import GoldenThoughts 
from plan import ClassSchedule

client = discord.Client()


@client.event
async def on_ready():
    print('We have logged in as {0.user}'.format(client))

# wywoływanie zapisanego cytatu
@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('!Cytat'):
        await message.channel.send(GoldenThoughts().printQuote())

    if message.content.startswith('!Plan'):
        await message.channel.send(ClassSchedule().printClassesMessage())

# dodawanie nowego cytatu
@client.event
async def on_reaction_add(reaction,user):
    q = reaction.message.content
    if reaction.emoji == '📖': 
        if user.dm_channel == None: 
            await user.create_dm()
        await user.send(f'Kto jest autorem cytatu "{reaction.message.content}" ?')

        def check(m):
            return m.channel == user.dm_channel
        try:
            response = await client.wait_for('message', timeout = 15, check = check)
        except asyncio.TimeoutError:
            await user.send('Minął czas na odpowiedź, spróbuj ponownie ✌')
        else:
            if response.author == client.user:
                await user.send('Wystąpił błąd 🐛. Spróbuj ponownie ✌')
            else:
                await user.send(f'Zanotowane, dzięki {response.author.display_name} 🙌!')
                a = response.content
                GoldenThoughts().addQuote(a,q)

# admin może usuwać cytaty 
# OK dodać timeouty do odpowiedzi botowi na autora cytatu

client.run(config.botToken)