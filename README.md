# Journal
Understanding About Cucumber , Selenium and Capybara

## File or Application needed
* [Visual Studio Code](https://code.visualstudio.com/) - Editor
* [Chocolatey](https://chocolatey.org/) - Package Manager
* [Ruby](https://rubyinstaller.org/downloads/) - Language For Logic
* [ChromeDriver](https://chromedriver.chromium.org/downloads) - Browser Driver
* [RubyMine](https://www.jetbrains.com/ruby/) - IDE

## Structure Tree
```bash
├── Gemfile
├── Gemfile.lock
└── features
    ├── journal.feature
    ├── support 
    │   └── env.rb
    └── step_definitions
        ├── journal_step.rb
        └── page_object
            ├── login_page.rb
            └── main_page.rb
```

## How To Use
Cloning
```
git clone https://github.com/PwS/Journal.git
cd Journal
```

Install bundler
```
gem install bundler
```

Install dependencies Project
```
bundle install
```
Running
```
bundle exec cucumber
```

If Using Ide RubyMine , The IDE Have separated Button to Running each Feature / Scenario
1. Run Feature (Shortcut Shift + F10)
2. Run Feature
3. Run Scenario
<img src="RubyMine.PNG" alt="drawing" width="800"/>
