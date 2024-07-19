import sys
def handler(event, context):
    return 'Hello from AWS local Lambda using Python Version: ' + sys.version + '!'
