.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy$1;
    }
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I

.field private static final ALL_SUPPRESSED_EFFECTS:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final PRIORITY_SENDERS_ANY:I = 0x0

.field public static final PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final PRIORITY_SENDERS_STARRED:I = 0x2

.field public static final SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1

.field public static final SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2


# instance fields
.field public final priorityCallSenders:I

.field public final priorityCategories:I

.field public final priorityMessageSenders:I

.field public final suppressedVisualEffects:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/16 v2, 0x10

    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    filled-new-array {v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    return-void
.end method

.method private static effectToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SUPPRESSED_EFFECTS_UNSET"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static priorityCategoriesToString(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2c

    if-nez p0, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    aget v1, v3, v0

    and-int v3, p0, v1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    not-int v3, v1

    and-int/2addr p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static priorityCategoryToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "PRIORITY_CATEGORY_REMINDERS"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "PRIORITY_CATEGORY_EVENTS"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "PRIORITY_CATEGORY_MESSAGES"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "PRIORITY_CATEGORY_CALLS"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static prioritySendersToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "PRIORITY_SENDERS_ANY"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "PRIORITY_SENDERS_CONTACTS"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "PRIORITY_SENDERS_STARRED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static suppressedEffectsToString(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2c

    if-gtz p0, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    sget-object v3, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    aget v0, v3, v1

    and-int v3, p0, v0

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    not-int v3, v0

    and-int/2addr p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, "UNKNOWN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/app/NotificationManager$Policy;

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NotificationManager.Policy[priorityCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",priorityCallSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",priorityMessageSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",suppressedVisualEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
