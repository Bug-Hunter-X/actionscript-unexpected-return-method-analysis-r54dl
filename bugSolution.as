public function someMethod():void {
    // ... some code ...
    var needsCleanup:Boolean = false; 
    try {
        if (someCondition) {
            needsCleanup = true;
            // ... perform some actions...
        } else {
            // ... other actions
        }
    } finally {
        if (needsCleanup) {
            // Clean up resources, close connections, etc.
        }
    }
}

//Alternative solution (restructuring) using a separate function:
public function someMethod():void {
    // ... some code ...
    if (someCondition) {
        handleSomeCondition();
    } else {
        // ... other actions
    }
}

private function handleSomeCondition():void {
    // ... Actions to be performed if someCondition is true
}
