# 🌱 Pioneer Nurseries Shop Page

Welcome to the **Pioneer Nurseries** website, a platform showcasing nursery products, customer engagement features, and informational content. This repository hosts the source code for the website, with the shop page available at [https://jimhancs1.github.io/pioneer_nurseries/shop.html](https://jimhancs1.github.io/pioneer_nurseries/shop.html).

[![GitHub Repository](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/jimhancs1/pioneer_nurseries)
[![License](https://img.shields.io/badge/License-GNU%20GPL%20v3.0-green)](LICENSE)
[![Hosted](https://img.shields.io/badge/Hosted-GitHub%20Pages-lightgrey)](https://jimhancs1.github.io/pioneer_nurseries)

---

## 📑 Overview

The Pioneer Nurseries website offers a seamless browsing and shopping experience for nursery products. Key features include a product catalog, shopping cart, customer feedback system, and informational pages about the nursery’s mission, training programs, and more.

---

## 📂 Project Structure

The repository is organized as follows:

- `index.html`: Homepage of the Pioneer Nurseries website.
- `shop.html`: Product catalog for browsing and purchasing.
- `cart.html`: Manages the shopping cart for selected products.
- `feedback.html`: Form for customers to submit feedback or reviews.
- `contact.html`: Contact information and inquiry form.
- `about.html`: Information about the nursery’s history, mission, or team.
- `more-details.html`: Additional details about products or services.
- `thank-you.html`: Confirmation page for form submissions or purchases.
- `training.html`: Details about training programs or resources.
- `nursery_database.html`: Interface for accessing or displaying nursery data (e.g., product database).
- `thumbnails/`: Directory containing thumbnail images for products or visuals.

---

## ✨ Features

- **Product Catalog**: Browse nursery products with names, prices, and images on `shop.html`.
- **Shopping Cart**: Add, view, and manage products in the cart via `cart.html`.
- **Customer Engagement**:
  - Submit feedback through `feedback.html`.
  - Contact the nursery via `contact.html`.
- **Informational Pages**:
  - Learn about the nursery on `about.html`.
  - Explore training resources on `training.html`.
  - View extra details on `more-details.html`.
- **Responsive Design**: Optimized for desktop and mobile devices.
- **Database Access**: Interact with nursery data on `nursery_database.html`.
- **GitHub Pages Hosting**: Deployed via GitHub Pages for easy access.

---

## 🛠️ Setup Instructions

To run or modify the project locally, follow these steps:

<details>
<summary><b>1. Clone the Repository</b></summary>

```bash
git clone https://github.com/jimhancs1/pioneer_nurseries.git
cd pioneer_nurseries
```

</details>

<details>
<summary><b>2. Serve the Site Locally</b></summary>

Use a local server to preview the site. For example, with Python:

```bash
python -m http.server 8000
```

Open your browser and navigate to [http://localhost:8000/index.html](http://localhost:8000/index.html) or other pages.

</details>

<details>
<summary><b>3. Make Changes</b></summary>

- **Content**: Edit HTML files (e.g., `shop.html`, `cart.html`).
- **Styling**: Modify CSS files in the `css/` directory.
- **Functionality**: Update JavaScript files in the `js/` directory.
- **Images**: Ensure images in `thumbnails/` and `images/` are correctly referenced.

</details>

<details>
<summary><b>4. Deploy to GitHub Pages</b></summary>

Push changes to the `gh-pages` branch (or the configured branch):

```bash
git add .
git commit -m "Update website"
git push origin main
```

Verify GitHub Pages is configured in the repository settings to serve from the correct branch.

</details>

---

## 📚 Dependencies

- No external frameworks or libraries are required unless specified in HTML or JavaScript files (e.g., Bootstrap, jQuery).
- A modern web browser is recommended for optimal performance.

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch:

   ```bash
   git checkout -b feature-branch
   ```

3. Make changes and commit:

   ```bash
   git commit -m "Add feature"
   ```

4. Push to the branch:

   ```bash
   git push origin feature-branch
   ```

5. Open a pull request.

---

## 📜 License

This project is licensed under the **GNU General Public License v3.0**. See the [LICENSE](LICENSE) file for details. You are free to use, modify, and distribute this software, provided derivative works are also licensed under the GNU GPL v3. The source code must be made available when distributing the software.

---

## 📧 Contact

For questions or support, contact the repository owner via [GitHub Issues](https://github.com/jimhancs1/pioneer_nurseries/issues) or email (if provided).

---

*Last updated: June 12, 2025*
```

### Notes:
- The content is formatted using GitHub-flavored Markdown, ensuring compatibility with GitHub's rendering.
- Badges are retained as provided, using shields.io syntax for GitHub, License, and Hosted status.
- Collapsible sections (`<details>`) are used for setup instructions, as in the original document.
- Code blocks use triple backticks (```) with the `bash` language identifier for shell commands.
- Links, headings, lists, and emojis are preserved to match the original style and structure.
