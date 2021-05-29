
USE_I18N = True  # {% load i18n %}, {% trans "..." %}
USE_L10N = True  # {% load l10n %}, locale date format
USE_TZ = False
USE_THOUSAND_SEPARATOR = True

LANGUAGES = [
    ('en', 'English'),
    ('ru_RU', 'Русский'),
]
""" force language:
LANGUAGES = [ ('ru', 'Русский'), ]
LANGUAGE_CODE = 'ru-RU'
"""

LOCALE_PATHS = (
    os.path.join(BASE_DIR, "locale"),
)
ALLOWED_HOSTS = ['*']
SITE_ID = 1


LANGUAGES = [
    ('ru_RU', 'Русский'),
]
LANGUAGE_CODE = 'ru-RU'  # force russian

TIME_ZONE = 'Europe/Moscow'
USE_TZ = False
