// Check if the player is on the trampoline
if (!isPlayerOnTrampoline)
{
    // Bounce the player upwards
    other.vspeed = -bounceStrength;
    isPlayerOnTrampoline = true; // Set the flag to indicate that the player is on the trampoline
}

