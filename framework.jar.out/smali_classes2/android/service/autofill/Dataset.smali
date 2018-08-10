.class public final Landroid/service/autofill/Dataset;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Dataset$1;,
        Landroid/service/autofill/Dataset$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthentication:Landroid/content/IntentSender;

.field private final mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field mId:Ljava/lang/String;

.field private final mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/Dataset$1;

    invoke-direct {v0}, Landroid/service/autofill/Dataset$1;-><init>()V

    sput-object v0, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/Dataset$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-get1(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-get3(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-get2(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-get5(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-get0(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-get4(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthentication()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method public getFieldIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFieldPresentation(I)Landroid/widget/RemoteViews;
    .locals 2

    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method public getFieldValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dataset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "fieldIds="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", fieldValues="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", fieldPresentations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", hasPresentation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", hasAuthentication="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
