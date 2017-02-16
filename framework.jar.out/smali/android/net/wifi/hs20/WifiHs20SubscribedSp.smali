.class public Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
.super Ljava/lang/Object;
.source "WifiHs20SubscribedSp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20SubscribedSp$1;,
        Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20SubscribedSp;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SubscribedSp"


# instance fields
.field creationDate:Ljava/lang/String;

.field credId:I

.field credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

.field dataLimit:I

.field expiryDate:Ljava/lang/String;

.field fqdn:Ljava/lang/String;

.field friendlyName:Ljava/lang/String;

.field hsId:I

.field iconFileName:Ljava/lang/String;

.field isEnabled:Z

.field priority:I

.field realm:Ljava/lang/String;

.field subscriptionPriority:I

.field timeLimit:I

.field typeOfSubscription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->DBG:Z

    .line 229
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$1;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>(IZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;)V
    .locals 0
    .param p1, "_hsId"    # I
    .param p2, "_isEnabeld"    # Z
    .param p3, "_credId"    # I
    .param p4, "_fqdn"    # Ljava/lang/String;
    .param p5, "_realm"    # Ljava/lang/String;
    .param p6, "_friendlyName"    # Ljava/lang/String;
    .param p7, "_iconFileName"    # Ljava/lang/String;
    .param p8, "_creationDate"    # Ljava/lang/String;
    .param p9, "_expiryDate"    # Ljava/lang/String;
    .param p10, "_typeOfSubscription"    # Ljava/lang/String;
    .param p11, "_dataLimit"    # I
    .param p12, "_timeLimit"    # I
    .param p13, "_priority"    # I
    .param p14, "_subscriptionPriority"    # I
    .param p15, "_credType"    # Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    .line 56
    iput-boolean p2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    .line 57
    iput p3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    .line 58
    iput-object p4, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    .line 64
    iput-object p10, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    .line 65
    iput p11, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    .line 66
    iput p12, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    .line 67
    iput p13, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    .line 68
    iput p14, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    .line 69
    iput-object p15, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hs20/WifiHs20SubscribedSp;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/hs20/WifiHs20SubscribedSp;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    .line 75
    iget-boolean v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    .line 76
    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    .line 77
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    .line 84
    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    .line 85
    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    .line 86
    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    .line 87
    iget v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    .line 88
    iget-object v0, p1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCredId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    return v0
.end method

.method public getCredType()Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-object v0
.end method

.method public getDataLimit()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    return v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHotspotId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    return v0
.end method

.method public getIconFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionPriority()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    return v0
.end method

.method public getTimeLimit()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    return v0
.end method

.method public getTypeOfSubscription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    return v0
.end method

.method public setCredType(Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;)V
    .locals 0
    .param p1, "_credType"    # Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .prologue
    .line 178
    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .line 177
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    .line 162
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "_priority"    # I

    .prologue
    .line 168
    iput p1, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    .line 186
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "hsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", isEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 187
    const-string/jumbo v3, ", CredId: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 187
    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 187
    const-string/jumbo v3, ", Fqdn: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 188
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    .line 186
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 188
    const-string/jumbo v3, ", Realm: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 189
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    .line 186
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 189
    const-string/jumbo v3, ", FriendlyName: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 190
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    .line 186
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 190
    const-string/jumbo v3, ", IconFileName: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 191
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v0

    .line 186
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 191
    const-string/jumbo v3, ", CreationDate: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 192
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, v0

    .line 186
    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 192
    const-string/jumbo v3, ", ExpiryDate: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 193
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v2, v0

    .line 186
    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 193
    const-string/jumbo v3, ", TypeOfSubscription: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 194
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 186
    .end local v0    # "none":Ljava/lang/String;
    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 195
    const-string/jumbo v3, ", DataLimit: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 195
    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 195
    const-string/jumbo v3, ", TimeLimit: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 196
    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 196
    const-string/jumbo v3, ", Priority: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 196
    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 197
    const-string/jumbo v3, ", SubscriptionPriority: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 197
    iget v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 198
    const-string/jumbo v3, ", CredType: "

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 198
    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 188
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    goto/16 :goto_1

    .line 190
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    goto/16 :goto_2

    .line 191
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    goto/16 :goto_3

    .line 192
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    goto :goto_4

    .line 193
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    goto :goto_5

    .line 194
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 211
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->hsId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-boolean v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 213
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->fqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->iconFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->creationDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->expiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->dataLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->timeLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->subscriptionPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;->credType:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
