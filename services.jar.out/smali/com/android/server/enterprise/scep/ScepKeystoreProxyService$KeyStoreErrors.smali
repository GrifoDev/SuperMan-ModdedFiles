.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStoreErrors"
.end annotation


# static fields
.field private static final CERTIFICATE_EXCEPTION:I = 0x3

.field private static final FAILURE:I = 0x1

.field private static final KEYSTORE_EXCEPTION:I = 0x2

.field private static final SUCCESS:I = 0x0

.field private static final UNKNOWN_EXCEPTION:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
