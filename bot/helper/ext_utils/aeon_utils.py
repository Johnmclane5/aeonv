import re
from pyshorteners import Shortener
from bot import LOGGER, config_dict
from re import IGNORECASE, search, escape

def tinyfy(long_url):
    s = Shortener()
    try:
        short_url = s.clckru.short(long_url)
        LOGGER.info(f'tinyfied {long_url} to {short_url}')
        return short_url
    except Exception:
        LOGGER.error(f'Failed to shorten URL: {long_url}')
        return long_url
