.class public Lcom/android/contacts/common/compat/SdkVersionOverride;
.super Ljava/lang/Object;
.source "SdkVersionOverride.java"


# static fields
.field private static final ALLOW_OVERRIDE_VERSION:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkVersion(I)I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
