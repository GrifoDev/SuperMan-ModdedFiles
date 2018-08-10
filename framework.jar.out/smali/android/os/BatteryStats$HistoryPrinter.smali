.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldAp_temp:I

.field oldBat_temp:I

.field oldChargeMAh:I

.field oldChg_temp:I

.field oldCurrent:I

.field oldHealth:I

.field oldLevel:I

.field oldPa_temp:I

.field oldPlug:I

.field oldPst_temp:I

.field oldSecCurrentEvent:I

.field oldSecEvent:I

.field oldSecOnline:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method private printStepCpuUidDetails(Ljava/io/PrintWriter;III)V
    .locals 1

    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 17

    if-nez p5, :cond_1

    const-string/jumbo v2, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, p3

    const/16 v4, 0x13

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string/jumbo v2, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ") "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    if-eqz p5, :cond_0

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "START"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :goto_1
    return-void

    :cond_1
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, p3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    :cond_4
    if-eqz p5, :cond_5

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "RESET:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_6
    const-string/jumbo v2, "TIME:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_7

    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, p2

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    if-eqz p5, :cond_9

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v2, "SHUTDOWN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    if-eqz p5, :cond_b

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const-string/jumbo v2, "*OVERFLOW*"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    if-nez p5, :cond_30

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v3, 0xa

    if-ge v2, v3, :cond_29

    const-string/jumbo v2, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    :goto_3
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    if-eqz p6, :cond_f

    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ltz v2, :cond_e

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2a

    const-string/jumbo v2, "0000000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    :goto_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v2, v3, :cond_10

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p5, :cond_31

    const-string/jumbo v2, ",Bs="

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p5, :cond_37

    const-string/jumbo v2, ",Bh="

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v2, :pswitch_data_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v2, v3, :cond_12

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p5, :cond_41

    const-string/jumbo v2, ",Bp="

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v2, :pswitch_data_2

    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    move-object/from16 v0, p2

    iget-short v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v2, v3, :cond_13

    move-object/from16 v0, p2

    iget-short v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p5, :cond_46

    const-string/jumbo v2, ",Bt="

    :goto_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    move-object/from16 v0, p2

    iget-char v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v2, v3, :cond_14

    move-object/from16 v0, p2

    iget-char v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p5, :cond_47

    const-string/jumbo v2, ",Bv="

    :goto_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_14
    if-nez p5, :cond_1b

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    move-object/from16 v0, p2

    iget-short v3, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p2

    iget-short v2, v0, Landroid/os/BatteryStats$HistoryItem;->current:S

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    const/4 v11, 0x1

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    const/4 v11, 0x1

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    if-eq v2, v3, :cond_17

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    const/4 v11, 0x1

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    if-eq v2, v3, :cond_18

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    const/4 v11, 0x1

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    const/4 v11, 0x1

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v2, v3, :cond_1a

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    const/4 v11, 0x1

    :cond_1a
    if-eqz v11, :cond_1b

    const-string/jumbo v2, " current="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " ap_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " pst_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " bat_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " chg_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " pa_temp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_1b
    if-nez p5, :cond_1f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v2, v3, :cond_1c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    const/4 v11, 0x1

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-eq v2, v3, :cond_1d

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    const/4 v11, 0x1

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v2, v3, :cond_1e

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    const/4 v11, 0x1

    :cond_1e
    if-eqz v11, :cond_1f

    const-string/jumbo v2, " misc_event="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " online="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " current_event="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_1f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v8, v2, 0x3e8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v2, v8, :cond_20

    move-object/from16 v0, p0

    iput v8, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p5, :cond_48

    const-string/jumbo v2, ",Bcc="

    :goto_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v7, p5, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v7, p5, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v2, :cond_21

    if-eqz p5, :cond_49

    const-string/jumbo v2, ",wr="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_21
    :goto_f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v2, :cond_23

    if-eqz p5, :cond_4a

    const-string/jumbo v2, ","

    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_22
    :goto_11
    if-eqz p5, :cond_4c

    sget-object v9, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    :goto_12
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v3, -0xc001

    and-int v10, v2, v3

    if-ltz v10, :cond_4d

    array-length v2, v9

    if-ge v10, v2, :cond_4d

    aget-object v2, v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_13
    const-string/jumbo v2, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_4f

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_23
    :goto_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v2, :cond_28

    if-nez p5, :cond_50

    const-string/jumbo v2, "                 Details: cpu="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "u+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "s"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v2, :cond_26

    const-string/jumbo v2, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v2, :cond_24

    const-string/jumbo v2, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    :cond_24
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v2, :cond_25

    const-string/jumbo v2, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/io/PrintWriter;III)V

    :cond_25
    const/16 v2, 0x29

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "                          /proc/stat="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " usr, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " sys, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " io, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " irq, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " sirq, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " idle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int v15, v2, v3

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int v14, v15, v2

    if-lez v14, :cond_27

    const-string/jumbo v2, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-float v2, v15

    int-to-float v3, v14

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v12, v2, v3

    const-string/jumbo v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/lit8 v2, v14, 0xa

    int-to-long v2, v2

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v2, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_27
    const-string/jumbo v2, ", PlatformIdleStat "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_28
    :goto_15
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v3, 0x64

    if-ge v2, v3, :cond_d

    const-string/jumbo v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x100

    if-ge v2, v3, :cond_2b

    const-string/jumbo v2, "000000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x1000

    if-ge v2, v3, :cond_2c

    const-string/jumbo v2, "00000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2d

    const-string/jumbo v2, "0000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2d
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    if-ge v2, v3, :cond_2e

    const-string/jumbo v2, "000"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000000

    if-ge v2, v3, :cond_2f

    const-string/jumbo v2, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2f
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000000

    if-ge v2, v3, :cond_e

    const-string/jumbo v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    move-object/from16 v0, p2

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p0

    iput v2, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string/jumbo v2, ",Bl="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_5

    :cond_31
    const-string/jumbo v2, " status="

    goto/16 :goto_6

    :pswitch_1
    if-eqz p5, :cond_32

    const-string/jumbo v2, "?"

    :goto_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_32
    const-string/jumbo v2, "unknown"

    goto :goto_16

    :pswitch_2
    if-eqz p5, :cond_33

    const-string/jumbo v2, "c"

    :goto_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_33
    const-string/jumbo v2, "charging"

    goto :goto_17

    :pswitch_3
    if-eqz p5, :cond_34

    const-string/jumbo v2, "d"

    :goto_18
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_34
    const-string/jumbo v2, "discharging"

    goto :goto_18

    :pswitch_4
    if-eqz p5, :cond_35

    const-string/jumbo v2, "n"

    :goto_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_35
    const-string/jumbo v2, "not-charging"

    goto :goto_19

    :pswitch_5
    if-eqz p5, :cond_36

    const-string/jumbo v2, "f"

    :goto_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_36
    const-string/jumbo v2, "full"

    goto :goto_1a

    :cond_37
    const-string/jumbo v2, " health="

    goto/16 :goto_8

    :pswitch_6
    if-eqz p5, :cond_38

    const-string/jumbo v2, "?"

    :goto_1b
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_38
    const-string/jumbo v2, "unknown"

    goto :goto_1b

    :pswitch_7
    if-eqz p5, :cond_39

    const-string/jumbo v2, "g"

    :goto_1c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_39
    const-string/jumbo v2, "good"

    goto :goto_1c

    :pswitch_8
    if-eqz p5, :cond_3a

    const-string/jumbo v2, "h"

    :goto_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3a
    const-string/jumbo v2, "overheat"

    goto :goto_1d

    :pswitch_9
    if-eqz p5, :cond_3b

    const-string/jumbo v2, "d"

    :goto_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3b
    const-string/jumbo v2, "dead"

    goto :goto_1e

    :pswitch_a
    if-eqz p5, :cond_3c

    const-string/jumbo v2, "v"

    :goto_1f
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3c
    const-string/jumbo v2, "over-voltage"

    goto :goto_1f

    :pswitch_b
    if-eqz p5, :cond_3d

    const-string/jumbo v2, "f"

    :goto_20
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3d
    const-string/jumbo v2, "failure"

    goto :goto_20

    :pswitch_c
    if-eqz p5, :cond_3e

    const-string/jumbo v2, "c"

    :goto_21
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3e
    const-string/jumbo v2, "cold"

    goto :goto_21

    :pswitch_d
    if-eqz p5, :cond_3f

    const-string/jumbo v2, "l"

    :goto_22
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3f
    const-string/jumbo v2, "over-limit"

    goto :goto_22

    :pswitch_e
    if-eqz p5, :cond_40

    const-string/jumbo v2, "u"

    :goto_23
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_40
    const-string/jumbo v2, "under-voltage"

    goto :goto_23

    :cond_41
    const-string/jumbo v2, " plug="

    goto/16 :goto_a

    :pswitch_f
    if-eqz p5, :cond_42

    const-string/jumbo v2, "n"

    :goto_24
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_42
    const-string/jumbo v2, "none"

    goto :goto_24

    :pswitch_10
    if-eqz p5, :cond_43

    const-string/jumbo v2, "a"

    :goto_25
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_43
    const-string/jumbo v2, "ac"

    goto :goto_25

    :pswitch_11
    if-eqz p5, :cond_44

    const-string/jumbo v2, "u"

    :goto_26
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_44
    const-string/jumbo v2, "usb"

    goto :goto_26

    :pswitch_12
    if-eqz p5, :cond_45

    const-string/jumbo v2, "w"

    :goto_27
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_45
    const-string/jumbo v2, "wireless"

    goto :goto_27

    :cond_46
    const-string/jumbo v2, " temp="

    goto/16 :goto_c

    :cond_47
    const-string/jumbo v2, " volt="

    goto/16 :goto_d

    :cond_48
    const-string/jumbo v2, " charge="

    goto/16 :goto_e

    :cond_49
    const-string/jumbo v2, " wake_reason="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ":\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_4a
    const-string/jumbo v2, " "

    goto/16 :goto_10

    :cond_4b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_22

    const-string/jumbo v2, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_4c
    sget-object v9, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    goto/16 :goto_12

    :cond_4d
    if-eqz p5, :cond_4e

    const-string/jumbo v2, "Ev"

    :goto_28
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    goto/16 :goto_13

    :cond_4e
    const-string/jumbo v2, "event"

    goto :goto_28

    :cond_4f
    sget-object v2, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v2, v2, v10

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v2, v3}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v2, ":\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_50
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ",0,Dcpu="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v2, :cond_52

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v2, :cond_51

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    :cond_51
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v2, :cond_52

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/io/PrintWriter;III)V

    :cond_52
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v2, "h"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ",0,Dpst="

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz v2, :cond_53

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_53
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    return-void
.end method
