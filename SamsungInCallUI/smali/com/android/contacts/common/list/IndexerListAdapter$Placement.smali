.class public final Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/IndexerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->d:I

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->d:I

    return v0
.end method

.method static synthetic a(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->d:I

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->d:I

    return-void
.end method
