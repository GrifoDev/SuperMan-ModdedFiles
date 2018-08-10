.class public Lcom/sec/ims/presence/PresenceInfo$Builder;
.super Ljava/lang/Object;
.source "PresenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/PresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field activities:Ljava/lang/String;

.field avatar_uri:Ljava/lang/String;

.field birthday:Ljava/lang/String;

.field cyworld:Ljava/lang/String;

.field display_name:Ljava/lang/String;

.field email:Ljava/lang/String;

.field expire_time:J

.field facebook:Ljava/lang/String;

.field homepage:Ljava/lang/String;

.field hyper:I

.field mood_text:Ljava/lang/String;

.field phone_number:Ljava/lang/String;

.field pidf:Ljava/lang/String;

.field state:I

.field tel_uri:Ljava/lang/String;

.field timestamp:J

.field twitter:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activities(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->activities:Ljava/lang/String;

    return-object p0
.end method

.method public avatar_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->avatar_uri:Ljava/lang/String;

    return-object p0
.end method

.method public birthday(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->birthday:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sec/ims/presence/PresenceInfo;
    .locals 1

    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Lcom/sec/ims/presence/PresenceInfo$Builder;)V

    return-object v0
.end method

.method public cyworld(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->cyworld:Ljava/lang/String;

    return-object p0
.end method

.method public display_name(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->display_name:Ljava/lang/String;

    return-object p0
.end method

.method public email(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public expire_time(J)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->expire_time:J

    return-object p0
.end method

.method public facebook(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->facebook:Ljava/lang/String;

    return-object p0
.end method

.method public homepage(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->homepage:Ljava/lang/String;

    return-object p0
.end method

.method public hyper(I)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->hyper:I

    return-object p0
.end method

.method public mood_text(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->mood_text:Ljava/lang/String;

    return-object p0
.end method

.method public phone_number(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->phone_number:Ljava/lang/String;

    return-object p0
.end method

.method public pidf(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->pidf:Ljava/lang/String;

    return-object p0
.end method

.method public state(I)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->state:I

    return-object p0
.end method

.method public tel_uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp:J

    return-object p0
.end method

.method public twitter(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->twitter:Ljava/lang/String;

    return-object p0
.end method

.method public uri(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri:Ljava/lang/String;

    return-object p0
.end method
