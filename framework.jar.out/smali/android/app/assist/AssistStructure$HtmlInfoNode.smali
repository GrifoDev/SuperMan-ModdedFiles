.class final Landroid/app/assist/AssistStructure$HtmlInfoNode;
.super Landroid/view/ViewStructure$HtmlInfo;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtmlInfoNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistStructure$HtmlInfoNode$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNames:[Ljava/lang/String;

.field private final mTag:Ljava/lang/String;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/ViewStructure$HtmlInfo;-><init>()V

    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-get1(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-get0(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-get0(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-get2(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-get0(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->-get2(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;Landroid/app/assist/AssistStructure$HtmlInfoNode;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode;-><init>(Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mAttributes:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/assist/AssistStructure$HtmlInfoNode;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
