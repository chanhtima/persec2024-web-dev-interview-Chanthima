// autocomplete.ts

function autocomplete(search: string, items: string[], maxResult: number): string[] {
    const lowerSearch = search.toLowerCase();
    const filteredItems = items.filter(item => item.toLowerCase().includes(lowerSearch));
    
    filteredItems.sort((a, b) => {
        const aStartsWith = a.toLowerCase().startsWith(lowerSearch);
        const bStartsWith = b.toLowerCase().startsWith(lowerSearch);

        if (aStartsWith && !bStartsWith) return -1;
        if (!aStartsWith && bStartsWith) return 1;
        return a.toLowerCase().indexOf(lowerSearch) - b.toLowerCase().indexOf(lowerSearch);
    });

    return filteredItems.slice(0, maxResult);
}


