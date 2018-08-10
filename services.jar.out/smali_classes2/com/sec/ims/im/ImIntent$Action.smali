.class public Lcom/sec/ims/im/ImIntent$Action;
.super Ljava/lang/Object;
.source "ImIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/im/ImIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final CREATE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

.field public static final CREATE_CHAT_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
