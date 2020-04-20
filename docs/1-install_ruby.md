# 1 Installing Ruby on MacOS
The best way to install ruby on your mac is by using RVM.  
RVM stands for Ruby Version Manager, It is the best way to install and manage ruby versions

## 1.1  Installing RVM
1. Install GPG   
   ```brew install gpg ```
   
2. Install RVM  
```curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby```
	* To start using RVM you need to run `source ~/.rvm/scripts/rvm`
1. Check your ruby version  *most macOS will already have some version of ruby installed*  
```rvm list```
2. Check list of versions easy to pull down:  
```rvm list known```
1. Switch between ruby versions  
```rvm use 2.7.0```
1. Remove a ruby version  
```rvm remove 2.2.5```
1. Install a ruby version  
```rvm install 2.5.0```

3. Other ways to check your ruby version  
   ```rbenv versions```  
```ruby -v```

1. Checking gems version
```gem -v```
