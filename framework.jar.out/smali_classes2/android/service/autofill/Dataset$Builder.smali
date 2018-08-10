.class public final Landroid/service/autofill/Dataset$Builder;
.super Ljava/lang/Object;
.source "Dataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAuthentication:Landroid/content/IntentSender;

.field private mDestroyed:Z

.field private mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -get0(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/autofill/Dataset$Builder;->setValueAndPresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "presentation must be non-null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-void
.end method

.method private setValueAndPresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)V
    .locals 2

    const-string/jumbo v1, "id cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/service/autofill/Dataset;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "at least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/service/autofill/Dataset;

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset;)V

    return-object v0
.end method

.method public setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Dataset$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Dataset presentation not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Landroid/service/autofill/Dataset$Builder;->setValueAndPresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)V

    return-object p0
.end method

.method public setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Landroid/service/autofill/Dataset$Builder;->setValueAndPresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)V

    return-object p0
.end method
