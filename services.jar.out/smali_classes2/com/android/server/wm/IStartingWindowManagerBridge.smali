.class public interface abstract Lcom/android/server/wm/IStartingWindowManagerBridge;
.super Ljava/lang/Object;
.source "IStartingWindowManagerBridge.java"


# virtual methods
.method public abstract addCustomLayoutResId(Ljava/lang/String;II)V
.end method

.method public abstract addCustomStartingWinodwData(Landroid/content/ComponentName;Landroid/os/Bundle;I)Ljava/lang/String;
.end method

.method public abstract canAddSamsungStartingWindow(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract getCustomStartingBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
.end method

.method public abstract getStartingWindowLayoutResId(Ljava/lang/String;II)I
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)Z
.end method

.method public abstract isCustomBitmapLoaded(Ljava/lang/String;I)Z
.end method

.method public abstract isFixedOrientation(Ljava/lang/String;I)Z
.end method

.method public abstract removeCustomLayoutResId(Ljava/lang/String;I)V
.end method

.method public abstract setCustomBitmapLoaded(Ljava/lang/String;ZI)Z
.end method

.method public abstract setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z
.end method
