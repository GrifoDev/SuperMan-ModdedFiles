.class public Lcom/sec/ims/extensions/Extensions$PhoneStateListener;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneStateListener"
.end annotation


# static fields
.field public static final LISTEN_PRECISE_CALL_STATE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "LISTEN_PRECISE_CALL_STATE"

    const-class v1, Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/Extensions$PhoneStateListener;->LISTEN_PRECISE_CALL_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
