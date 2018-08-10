.class public Lcom/sec/ims/options/SipRemoteProfile$Builder;
.super Ljava/lang/Object;
.source "SipRemoteProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/SipRemoteProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mProfile:Lcom/sec/ims/options/SipRemoteProfile;


# direct methods
.method public constructor <init>(Lcom/sec/ims/options/SipRemoteProfile;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/ims/options/SipRemoteProfile;

    invoke-direct {v1, v2, v2}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(Lcom/sec/ims/options/SipRemoteProfile;Lcom/sec/ims/options/SipRemoteProfile;)V

    iput-object v1, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/options/SipRemoteProfile;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/SipRemoteProfile;

    iput-object v1, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "should not occur"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/ims/options/SipRemoteProfile;

    invoke-direct {v0, v1, v1}, Lcom/sec/ims/options/SipRemoteProfile;-><init>(Lcom/sec/ims/options/SipRemoteProfile;Lcom/sec/ims/options/SipRemoteProfile;)V

    iput-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uriString cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/options/SipRemoteProfile;->-set0(Lcom/sec/ims/options/SipRemoteProfile;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/options/SipRemoteProfile;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    return-object v0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/sec/ims/options/SipRemoteProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/options/SipRemoteProfile$Builder;->mProfile:Lcom/sec/ims/options/SipRemoteProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/options/SipRemoteProfile;->-set0(Lcom/sec/ims/options/SipRemoteProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
