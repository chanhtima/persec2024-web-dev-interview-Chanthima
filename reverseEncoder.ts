class ReverseEncoder {
    private alphabet = 'abcdefghijklmnopqrstuvwxyz';
    private reverseAlphabet = this.alphabet.split('').reverse().join('');

    encode(text: string): string {
        return text
            .toLowerCase()
            .split('')
            .map(char => {
                const index = this.alphabet.indexOf(char);
                return index !== -1 ? this.reverseAlphabet[index] : char;
            })
            .reverse()
            .join('');
    }

    decode(text: string): string {
        return this.encode(text);
    }
}

