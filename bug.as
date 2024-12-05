public function someMethod():void {
    // ... some code ...
    if (someCondition) {
        return;
    }
    // ... more code that might throw an error if someCondition was true ...
}