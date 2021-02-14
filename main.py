import config
import discord
import zlotemysli

client = discord.Client()


@client.event
async def on_ready():
    print('We have logged in as {0.user}'.format(client))

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('!C'):
        await message.channel.send(zlotemysli.GoldenThoughts().selectQuote())

@client.event
async def on_reaction_add(reaction,user):
    if reaction.emoji == '📖': 
        if user.dm_channel == None: 
            await user.create_dm()
        await user.send(f'Kto jest autorem cytatu "{reaction.message.content}" ?')

        def check(m):
            return m.channel == user.dm_channel
        response = await client.wait_for('message', check=check)

        await user.send('Zanotowane, dzięki {.author}!.'.format(response))
        print(reaction.message.content)
        print(response.content)

client.run(config.botToken)