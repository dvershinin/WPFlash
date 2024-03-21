# WPFlash

WPFlash is a powerful CLI tool designed to streamline the process of updating WordPress installations, including themes and plugins, while meticulously preserving the integrity of your site's cache. In the dynamic world of WordPress, where security and feature updates are frequent, WPFlash offers a balanced approach to maintaining your site's performance and security without the constant need to rebuild your cache.

## :warning: **Disclaimer**

Please note that WPFlash is currently in **beta**. While we have made every effort to ensure the reliability and effectiveness of this tool, it is provided **"as is" without warranty of any kind, express or implied**. The use of WPFlash is at your own risk.

The developers of WPFlash assume **no liability** for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of the use of this tool, even if advised of the possibility of such damage.

:exclamation: As with any software that modifies your WordPress installation, it is **strongly recommended** that you **back up your website fully** before using WPFlash. Please ensure that you test any changes in a staging environment before applying them to your live site.

By using WPFlash, you acknowledge that you have read this disclaimer, understand it, and agree to its terms.


## Purpose

The primary goal of WPFlash is to provide WordPress site administrators and developers with a reliable, efficient means of updating their sites. Traditional update methods, whether manual updates through the WordPress admin or automatic updates, often disrupt site cache and performance. WPFlash addresses this by allowing updates to be scheduled and managed in a way that minimizes cache invalidation, ensuring that your site remains fast and responsive.

## Features

- **Setup Command**: Prepares your WordPress site for optimal update management, disabling automatic updates and setting up necessary plugins to control visibility of updates.
- **Upgrade Command**: Executes updates for WordPress core, themes, and plugins in a controlled manner, with an emphasis on minimizing cache disruption.
- **Monthly Update Schedule**: Designed to run updates on a monthly basis, striking a balance between keeping your site secure and maximizing cache longevity.
- **Customizable**: While WPFlash comes with a default configuration, it's built to be easily customizable to fit the specific needs of your WordPress site or hosting environment.

## Getting Started

### Prerequisites

- A WordPress site
- SSH access to the server hosting your WordPress site
- WP-CLI installed on the server

### Installation

1. Clone the WPFlash repository to your local machine or server:

```bash
git clone https://github.com/yourusername/WPFlash.git
```

2. Make the `wpflash` script executable:

```bash
chmod +x WPFlash/wpflash
```

3. Move `wpflash` to a location in your PATH for easy execution (optional):

```bash
mv WPFlash/wpflash /usr/local/bin/wpflash
```

### Usage

Navigate to your WordPress installation directory, then use WPFlash as follows:

- To set up your WordPress site for WPFlash management:

```bash
wpflash setup
```

- To perform the monthly update:

```bash
wpflash upgrade
```

## Contributing

Contributions to WPFlash are welcome! Whether it's bug reports, feature suggestions, or code contributions, please feel free to reach out or submit a pull request.

## License

WPFlash is open-sourced software licensed under the [MIT license](LICENSE).

## Acknowledgments

- WP-CLI team for the command-line interface that powers much of WPFlash's functionality.
- The WordPress community for continuously pushing the boundaries of what's possible with WordPress.

---

WPFlash is not just a tool; it's a solution to a common problem faced by WordPress administrators and developers. By using WPFlash, you're taking a significant step towards better managing your site's performance and security.
