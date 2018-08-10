.class public abstract Landroid/os/UserManagerInternal;
.super Ljava/lang/Object;
.source "UserManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManagerInternal$UserRestrictionsListener;
    }
.end annotation


# static fields
.field public static final CAMERA_DISABLED_GLOBALLY:I = 0x2

.field public static final CAMERA_DISABLED_LOCALLY:I = 0x1

.field public static final CAMERA_NOT_DISABLED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract clearAttributes(II)Z
.end method

.method public abstract clearVolatiles(II)Z
.end method

.method public abstract createUserEvenWhenDisallowed(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getAttributes(I)I
.end method

.method public abstract getBaseUserRestrictions(I)Landroid/os/Bundle;
.end method

.method public abstract getUserIds()[I
.end method

.method public abstract getUserRestriction(ILjava/lang/String;)Z
.end method

.method public abstract getVolatiles(I)I
.end method

.method public abstract isUserRunning(I)Z
.end method

.method public abstract isUserUnlocked(I)Z
.end method

.method public abstract isUserUnlockingOrUnlocked(I)Z
.end method

.method public abstract onEphemeralUserStop(I)V
.end method

.method public abstract removeAllUsers()V
.end method

.method public abstract removeUserEvenWhenDisallowed(I)Z
.end method

.method public abstract removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract removeUserState(I)V
.end method

.method public abstract setAttributes(II)Z
.end method

.method public abstract setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
.end method

.method public abstract setDeviceManaged(Z)V
.end method

.method public abstract setDevicePolicyUserRestrictions(ILandroid/os/Bundle;ZI)V
.end method

.method public abstract setForceEphemeralUsers(Z)V
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserManaged(IZ)V
.end method

.method public abstract setUserState(II)V
.end method

.method public abstract setVolatiles(II)Z
.end method
