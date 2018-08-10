.class final Landroid/app/assist/AssistStructure$HtmlInfoNode$1;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure$HtmlInfoNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    invoke-direct {v0, v3}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v2

    array-length v6, v4

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "AssistStructure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HtmlInfo attributes mismatch: names="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", values="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v5

    return-object v5

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    aget-object v5, v2, v1

    aget-object v6, v4, v1

    invoke-virtual {v0, v5, v6}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 1

    new-array v0, p1, [Landroid/app/assist/AssistStructure$HtmlInfoNode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v0

    return-object v0
.end method
