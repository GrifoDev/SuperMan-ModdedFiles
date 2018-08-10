.class public final Landroid/service/autofill/FillEventHistory$Event;
.super Ljava/lang/Object;
.source "FillEventHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final TYPE_AUTHENTICATION_SELECTED:I = 0x2

.field public static final TYPE_DATASET_AUTHENTICATION_SELECTED:I = 0x1

.field public static final TYPE_DATASET_SELECTED:I = 0x0

.field public static final TYPE_SAVE_SHOWN:I = 0x3


# instance fields
.field private final mDatasetId:Ljava/lang/String;

.field private final mEventType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eventType"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    iput-object p2, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDatasetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return v0
.end method
