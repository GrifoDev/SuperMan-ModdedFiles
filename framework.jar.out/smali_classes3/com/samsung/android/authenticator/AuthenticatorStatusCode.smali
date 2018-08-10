.class final Lcom/samsung/android/authenticator/AuthenticatorStatusCode;
.super Ljava/lang/Object;
.source "AuthenticatorStatusCode.java"


# static fields
.field static final ERROR_UNKNOWN:I = -0x1

.field static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
