.class interface abstract Lcom/android/server/LockSettingsService$IKeystoreUtil;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IKeystoreUtil"
.end annotation


# virtual methods
.method public abstract doHardHashAdjustment(Ljava/lang/String;I)Z
.end method

.method public abstract doHardHashMigration(Ljava/lang/String;I)Z
.end method

.method public abstract doHardKeyAdjustment(Ljava/lang/String;I)Z
.end method

.method public abstract doHardKeyMigration(Ljava/lang/String;I)Z
.end method

.method public abstract getLockType()I
.end method
