.class public Lcom/gsma/services/rcs/chat/GroupChat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;,
        Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;,
        Lcom/gsma/services/rcs/chat/GroupChat$State;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat;->a:Ljava/lang/String;

    return-void
.end method
