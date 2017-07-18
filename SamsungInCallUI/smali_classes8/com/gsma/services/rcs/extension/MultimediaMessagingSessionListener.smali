.class public abstract Lcom/gsma/services/rcs/extension/MultimediaMessagingSessionListener;
.super Ljava/lang/Object;
.source "MultimediaMessagingSessionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public abstract onMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
.end method

.method public abstract onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
.end method
