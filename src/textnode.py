class TextNode: 
    def __init__(self, text, text_type, url=None): 
        self.text = text
        self.text_type = text_type
        self.url = url

    def __eq__(self, other):
        if (self.text == other.text and self.text_type == other.text_type and self.url == other.url):
            return True
        return False

    def __repr__(self):
        return f'TextNode(text, text_type, url)'.format(text = self.text, text_type = self.text_type, url = self.url)
        
