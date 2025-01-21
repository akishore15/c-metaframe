document.getElementById('searchForm').addEventListener('submit', async (event) => {
    event.preventDefault();

    const query = document.getElementById('searchQuery').value;
    const response = await fetch(`/search?q=${query}`);
    const results = await response.json();

    const resultsDiv = document.getElementById('results');
    resultsDiv.innerHTML = '';

    results.forEach(result => {
        const resultDiv = document.createElement('div');
        resultDiv.innerHTML = `<a href="${result.link}">${result.title}</a>`;
        resultsDiv.appendChild(resultDiv);
    });
});
