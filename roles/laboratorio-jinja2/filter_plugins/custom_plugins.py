class FilterModule(object):
    ''' Custom filters are loaded by FilterModule objects '''

    def filters(self):
        ''' FilterModule objects return a dict mapping filter names to
            filter functions. '''
        return {
            'get_logo': self.get_logo,
        }

    def get_logo(self, value):
        return_string = value
        if return_string == 'RedHat':
            return_string = '<img src="{0}" />'.format('https://upload.wikimedia.org/wikipedia/en/thumb/6/6c/RedHat.svg/93px-RedHat.svg.png')
        elif return_string == 'CentOS':
            return_string = '<img src="{0}" />'.format('https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Centos-logo-light.svg/93px-Centos-logo-light.svg.png')
        return return_string

