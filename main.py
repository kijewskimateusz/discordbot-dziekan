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

    if message.content.startswith('!Hej'):
        await message.channel.send('Siemka!')

    if message.content.startswith('!Cytuj'):
        await message.channel.send(zlotemysli.GoldenThoughts().selectQuote())

# client.run('your token here')

client.run(config.botToken)