import config
import discord
import zlotemysli

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
        await message.channel.send(zlotemysli.GoldenThoughts().printQuote())

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
        response = await client.wait_for('message', check=check)
        a = response.content
        await user.send('Zanotowane, dzięki {.author}!.'.format(response))
        zlotemysli.GoldenThoughts().addQuote(a,q)

# admin może usuwać cytaty 
# dodać timeouty do odpowiedzi botowi na autora cytatu 

client.run(config.botToken)