.class public abstract Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PinCallback"
.end annotation


# instance fields
.field public mICallback:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->mICallback:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    return-void
.end method


# virtual methods
.method public abstract onUserCancelled()V
.end method

.method public abstract onUserEnteredPin([C)V
.end method

.method public abstract onUserPinError(I)V
.end method
