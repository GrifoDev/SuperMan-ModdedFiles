.class public Lcom/android/contacts/common/model/CPOWrapper;
.super Ljava/lang/Object;
.source "CPOWrapper.java"


# instance fields
.field private mOperation:Landroid/content/ContentProviderOperation;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    iput p2, p0, Lcom/android/contacts/common/model/CPOWrapper;->mType:I

    return-void
.end method


# virtual methods
.method public getOperation()Landroid/content/ContentProviderOperation;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/model/CPOWrapper;->mType:I

    return v0
.end method

.method public setOperation(Landroid/content/ContentProviderOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/model/CPOWrapper;->mType:I

    return-void
.end method
