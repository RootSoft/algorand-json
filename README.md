<p align="center"> 
<img src="https://miro.medium.com/max/700/1*BFpFCJepifaREIg7qLSLag.jpeg">
</p>

# algorand-json
[![pub.dev][pub-dev-shield]][pub-dev-url]
[![Effective Dart][effective-dart-shield]][effective-dart-url]
[![Stars][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

Algorand is a public blockchain and protocol that aims to deliver decentralization, scale and security for all participants.
Their PURE PROOF OF STAKE™ consensus mechanism ensures full participation, protection, and speed within a truly decentralized network. With blocks finalized in seconds, Algorand’s transaction throughput is on par with large payment and financial networks. And Algorand is the first blockchain to provide immediate transaction finality. No forking. No uncertainty.

## Introduction
Algorand-JSON is a collection of JSON related operations for the Algorand blockchain.

```dart
final algorand = Algorand(
  options: AlgorandOptions(
    mainnet: true,
    transformer: BigIntJsonTransformer(
      keys: ['uint'],
    ),
  ),
);
```
## Changelog

Please see [CHANGELOG](CHANGELOG.md) for more information on what has changed recently.

## Contributing & Pull Requests
Feel free to send pull requests.

Please see [CONTRIBUTING](.github/CONTRIBUTING.md) for details.

## Credits

- [Tomas Verhelst](https://github.com/rootsoft)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[pub-dev-shield]: https://img.shields.io/pub/v/algorand_json?style=for-the-badge
[pub-dev-url]: https://pub.dev/packages/algorand_json
[effective-dart-shield]: https://img.shields.io/badge/style-effective_dart-40c4ff.svg?style=for-the-badge
[effective-dart-url]: https://github.com/tenhobi/effective_dart
[stars-shield]: https://img.shields.io/github/stars/rootsoft/algorand-json.svg?style=for-the-badge&logo=github&colorB=deeppink&label=stars
[stars-url]: https://packagist.org/packages/rootsoft/algorand-json
[issues-shield]: https://img.shields.io/github/issues/rootsoft/algorand-json.svg?style=for-the-badge
[issues-url]: https://github.com/rootsoft/algorand-json/issues
[license-shield]: https://img.shields.io/github/license/rootsoft/algorand-json.svg?style=for-the-badge
[license-url]: https://github.com/RootSoft/algorand-json/blob/master/LICENSE