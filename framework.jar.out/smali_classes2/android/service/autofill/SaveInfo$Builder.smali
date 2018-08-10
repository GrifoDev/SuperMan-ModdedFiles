.class public final Landroid/service/autofill/SaveInfo$Builder;
.super Ljava/lang/Object;
.source "SaveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mDestroyed:Z

.field private mFlags:I

.field private mNegativeActionListener:Landroid/content/IntentSender;

.field private mNegativeButtonStyle:I

.field private mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final mType:I


# direct methods
.method static synthetic -get0(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return v0
.end method

.method static synthetic -get2(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    return v0
.end method

.method static synthetic -get4(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get5(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic -get6(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    return v0
.end method

.method public constructor <init>(I[Landroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    invoke-direct {p0, p2}, Landroid/service/autofill/SaveInfo$Builder;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-void
.end method

.method private assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "must have at least one id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot have null id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/service/autofill/SaveInfo;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/SaveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setFlags(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput-object p2, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object p0
.end method

.method public setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo$Builder;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method
