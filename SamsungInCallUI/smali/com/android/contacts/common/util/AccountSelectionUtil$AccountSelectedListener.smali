.class public Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AccountSelectionUtil"

    const-string v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->a:Ljava/util/List;

    iput p3, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->c:I

    iput p4, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->b:Landroid/content/Context;

    iget v2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->c:I

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget v3, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->d:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/contacts/common/util/AccountSelectionUtil;->a(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    return-void
.end method
