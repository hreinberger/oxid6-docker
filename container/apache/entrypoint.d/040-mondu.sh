#!/usr/bin/env bash
set -e

composer config github-oauth.github.com ${GITHUB_TOKEN}
composer config repositories.mondu/bnpl-checkout-oxid vcs https://github.com/mondu-ai/bnpl-checkout-oxid.git
composer require mondu/bnpl-checkout-oxid