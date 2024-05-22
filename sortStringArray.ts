function sortStringArray(arr: string[]): string[] {
    return arr.sort((a, b) => a.localeCompare(b, undefined, { numeric: true }));
}

