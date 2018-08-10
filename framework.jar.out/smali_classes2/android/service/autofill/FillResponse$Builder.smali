.class public final Landroid/service/autofill/FillResponse$Builder;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAuthentication:Landroid/content/IntentSender;

.field private mAuthenticationIds:[Landroid/view/autofill/AutofillId;

.field private mCLientState:Landroid/os/Bundle;

.field private mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mIgnoredIds:[Landroid/view/autofill/AutofillId;

.field private mPresentation:Landroid/widget/RemoteViews;

.field private mSaveInfo:Landroid/service/autofill/SaveInfo;


# direct methods
.method static synthetic -get0(Landroid/service/autofill/FillResponse$Builder;)Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get2(Landroid/service/autofill/FillResponse$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mCLientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get5(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -get6(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/SaveInfo;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    return-object p0
.end method

.method public build()Landroid/service/autofill/FillResponse;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need to provide at least one DataSet or a SaveInfo or an authentication with a presentation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/FillResponse;

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/FillResponse;-><init>(Landroid/service/autofill/FillResponse$Builder;Landroid/service/autofill/FillResponse;)V

    return-object v0
.end method

.method public setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ids cannot be null or empry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    move v2, v0

    :goto_0
    if-nez p3, :cond_3

    :goto_1
    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authentication and presentation must be both non-null or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iput-object p2, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    iput-object p3, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mCLientState:Landroid/os/Bundle;

    return-object p0
.end method

.method public varargs setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object p0
.end method
