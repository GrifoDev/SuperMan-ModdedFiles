.class public final Ljavax/net/ssl/StandardConstants;
.super Ljava/lang/Object;
.source "StandardConstants.java"


# static fields
.field public static final SNI_HOST_NAME:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No javax.net.ssl.StandardConstants instances for you!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
