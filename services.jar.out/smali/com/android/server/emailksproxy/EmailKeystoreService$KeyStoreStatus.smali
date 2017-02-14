.class Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStoreStatus"
.end annotation


# static fields
.field private static final LOCKED:I = 0x2

.field private static final UNINITIALIZED:I = 0x3

.field private static final UNKNOWN:I = 0x0

.field private static final UNLOCKED:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
