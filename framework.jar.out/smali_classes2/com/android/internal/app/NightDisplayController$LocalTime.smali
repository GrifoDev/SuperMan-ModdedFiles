.class public Lcom/android/internal/app/NightDisplayController$LocalTime;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NightDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTime"
.end annotation


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method static synthetic -wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->valueOf(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->toMillis()I

    move-result v0

    return v0
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid hourOfDay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0x3b

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid minute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    iput p2, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    return-void
.end method

.method private toMillis()I
    .locals 3

    iget v0, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static valueOf(I)Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 3

    const v2, 0x36ee80

    div-int v2, p0, v2

    rem-int/lit8 v0, v2, 0x18

    const v2, 0xea60

    div-int v2, p0, v2

    rem-int/lit8 v1, v2, 0x3c

    new-instance v2, Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/NightDisplayController$LocalTime;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-object v0
.end method

.method public getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5

    const/4 v4, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
