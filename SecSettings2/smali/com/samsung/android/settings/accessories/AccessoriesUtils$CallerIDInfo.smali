.class public Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;
.super Ljava/lang/Object;
.source "AccessoriesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/AccessoriesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerIDInfo"
.end annotation


# instance fields
.field public mArray:Ljava/lang/String;

.field public mCallerIDCount:I

.field public mChecked:Z

.field public mIcon:I

.field public mId:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    iput p2, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    iput-object p3, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mArray:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    return-void
.end method


# virtual methods
.method public increaseCallerIDCount()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    return-void
.end method

.method public resetCallerIDCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    return-void
.end method
