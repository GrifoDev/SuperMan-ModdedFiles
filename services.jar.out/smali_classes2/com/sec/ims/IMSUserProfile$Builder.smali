.class public Lcom/sec/ims/IMSUserProfile$Builder;
.super Ljava/lang/Object;
.source "IMSUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mProfile:Lcom/sec/ims/IMSUserProfile;

.field private mProxyAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/ims/IMSUserProfile;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/ims/IMSUserProfile;

    invoke-direct {v1, v2, v2}, Lcom/sec/ims/IMSUserProfile;-><init>(Lcom/sec/ims/IMSUserProfile;Lcom/sec/ims/IMSUserProfile;)V

    iput-object v1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IMSUserProfile;

    iput-object v1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProxyAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-virtual {p1}, Lcom/sec/ims/IMSUserProfile;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/ims/IMSUserProfile;->-set4(Lcom/sec/ims/IMSUserProfile;I)I

    invoke-static {}, Lcom/sec/ims/IMSUserProfile;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DisplayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ProxyAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v0, Lcom/sec/ims/IMSUserProfile;

    invoke-direct {v0, v1, v1}, Lcom/sec/ims/IMSUserProfile;-><init>(Lcom/sec/ims/IMSUserProfile;Lcom/sec/ims/IMSUserProfile;)V

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uriString cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set5(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/ims/IMSUserProfile;

    invoke-direct {v0, v1, v1}, Lcom/sec/ims/IMSUserProfile;-><init>(Lcom/sec/ims/IMSUserProfile;Lcom/sec/ims/IMSUserProfile;)V

    iput-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "username and serverDomain cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p2}, Lcom/sec/ims/IMSUserProfile;->-set2(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set5(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/sec/ims/IMSUserProfile;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    return-object v0
.end method

.method public setAuthUserName(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set0(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAutoRegistration(Z)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set1(Lcom/sec/ims/IMSUserProfile;Z)Z

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setOutboundProxy(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set3(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incorrect port arugment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set4(Lcom/sec/ims/IMSUserProfile;I)I

    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set5(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UDP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TCP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set6(Lcom/sec/ims/IMSUserProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSendKeepAlive(Z)Lcom/sec/ims/IMSUserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/IMSUserProfile$Builder;->mProfile:Lcom/sec/ims/IMSUserProfile;

    invoke-static {v0, p1}, Lcom/sec/ims/IMSUserProfile;->-set7(Lcom/sec/ims/IMSUserProfile;Z)Z

    return-object p0
.end method
