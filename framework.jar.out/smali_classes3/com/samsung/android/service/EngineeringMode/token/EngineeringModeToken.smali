.class public Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
.super Ljava/lang/Object;
.source "EngineeringModeToken.java"


# static fields
.field private static mEngineeringModeToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;


# instance fields
.field private mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

.field private mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

.field private mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mOTPtime:I

.field private mPrefix:Ljava/lang/String;

.field private mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mType:Ljava/lang/String;

.field private mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getGroupDB()Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    return-object v0
.end method

.method public getIntegrityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getIssuerInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getModeDB()Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    return-object v0
.end method

.method public getModeInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getOTPTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mOTPtime:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValidityInfo()Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public pushAttrToGroupItem(III[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->addAttrToGroupItem(III[B)V

    :cond_0
    return-void
.end method

.method public pushAttrToModeItem(III[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->addAttrToModeItem(III[B)V

    :cond_0
    return-void
.end method

.method public pushDeviceInfo(II[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    const-string/jumbo v1, "DEVI"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mDeviceInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    return-void
.end method

.method public pushGroupDB(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    const-string/jumbo v1, "GRDB"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mGroupDB:Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->addGroupItemCollection(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushIntegrityInfo(II[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    const-string/jumbo v1, "INTE"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIntegrityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    return-void
.end method

.method public pushIssuerInfo(II[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    const-string/jumbo v1, "ISSU"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mIssuerInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    return-void
.end method

.method public pushModeDB(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    const-string/jumbo v1, "MODB"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeDB:Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/ModeItemCollection;->addModeItemCollection(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public pushModeInfo(II[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    const-string/jumbo v1, "MODE"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mModeInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    return-void
.end method

.method public pushOTPTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mOTPtime:I

    return-void
.end method

.method public pushTokenInfo(II[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    const-string/jumbo v1, "TOKE"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mTokenInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    return-void
.end method

.method public pushValidityInfo(II[B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    const-string/jumbo v1, "VALI"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mValidityInfo:Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/CommonItemCollection;->addCommonItem(II[B)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->mVersion:Ljava/lang/String;

    return-void
.end method
