
fetchCategories();


async function fetchCategories() {
    try {
        const res = await fetch('./api/categories.php');
        if (!res.ok) throw new Error('Failed to fetch categories');

        const categories = await res.json();
        console.log(categories);
        const container = document.getElementById('category-container');
        container.innerHTML = '';

        categories.forEach(cat => {
            const link = document.createElement('a');
            link.href = `art.php?category=${cat.id}`;

            const div = document.createElement('div');
            div.className = 'category-grid';

            const title = document.createElement('h2');
            title.textContent = cat.name;

            div.appendChild(title);
            link.appendChild(div);
            container.appendChild(link);
        });

    } catch (err) {
        const container = document.getElementById('category-container');
        container.textContent = 'Error loading categories';
        console.error(err);
    }
}
