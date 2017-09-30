.class public Lcom/samsung/android/sdk/ssf/contact/io/PresenceRequestInfo;
.super Ljava/lang/Object;


# instance fields
.field protected prsc:Ljava/lang/String;

.field protected status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceRequestInfo;->prsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceRequestInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceRequestInfo;->prsc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setPresence(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceRequestInfo;->prsc:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceRequestInfo;->status:Ljava/lang/String;

    return-void
.end method
