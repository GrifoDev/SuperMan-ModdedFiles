.class Lcom/android/wubydax/NetworkTraffic$1;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wubydax/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wubydax/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/wubydax/NetworkTraffic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7

    long-to-float v2, p3

    long-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v0, v2

    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v2}, Lcom/android/wubydax/NetworkTraffic;->access$700(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$1500()Ljava/text/DecimalFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v2}, Lcom/android/wubydax/NetworkTraffic;->access$1600(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$1500()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v5}, Lcom/android/wubydax/NetworkTraffic;->access$700(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v2}, Lcom/android/wubydax/NetworkTraffic;->access$1700(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$1500()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v5}, Lcom/android/wubydax/NetworkTraffic;->access$1600(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/wubydax/NetworkTraffic;->access$1500()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v5}, Lcom/android/wubydax/NetworkTraffic;->access$1700(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private shouldHide(JJ)Z
    .locals 7

    long-to-float v2, p1

    long-to-float v3, p3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v2, v2

    const-wide/16 v4, 0x400

    div-long v0, v2, v4

    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v2}, Lcom/android/wubydax/NetworkTraffic;->access$1800(Lcom/android/wubydax/NetworkTraffic;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v2}, Lcom/android/wubydax/NetworkTraffic;->access$1900(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$000(Lcom/android/wubydax/NetworkTraffic;)J

    move-result-wide v24

    sub-long v4, v10, v24

    long-to-double v10, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$100(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v3

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$200(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v24, v0

    const-wide v26, 0x3fee666666666666L    # 0.95

    mul-double v24, v24, v26

    cmpg-double v3, v10, v24

    if-gez v3, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x1

    if-eq v3, v9, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v10, 0x1

    cmp-long v3, v4, v10

    if-gez v3, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/android/wubydax/NetworkTraffic;->access$002(Lcom/android/wubydax/NetworkTraffic;J)J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v16

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$300(Lcom/android/wubydax/NetworkTraffic;)J

    move-result-wide v10

    sub-long v12, v16, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$400(Lcom/android/wubydax/NetworkTraffic;)J

    move-result-wide v10

    sub-long v6, v18, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4, v5}, Lcom/android/wubydax/NetworkTraffic$1;->shouldHide(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    const-string v9, ""

    invoke-virtual {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Lcom/android/wubydax/NetworkTraffic;->access$302(Lcom/android/wubydax/NetworkTraffic;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Lcom/android/wubydax/NetworkTraffic;->access$402(Lcom/android/wubydax/NetworkTraffic;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$600(Lcom/android/wubydax/NetworkTraffic;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$1400(Lcom/android/wubydax/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v9}, Lcom/android/wubydax/NetworkTraffic;->access$1300(Lcom/android/wubydax/NetworkTraffic;)Ljava/lang/Runnable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v10}, Lcom/android/wubydax/NetworkTraffic;->access$100(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v10

    invoke-static {v10}, Lcom/android/wubydax/NetworkTraffic;->access$200(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$500(Lcom/android/wubydax/NetworkTraffic;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$600(Lcom/android/wubydax/NetworkTraffic;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$700(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v3

    const/16 v9, 0x400

    if-ne v3, v9, :cond_7

    const-string v8, "B/s"

    :goto_2
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$100(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v3

    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->access$800(II)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/wubydax/NetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    invoke-direct {v0, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v9}, Lcom/android/wubydax/NetworkTraffic;->access$900(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$100(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v3

    const/4 v9, 0x3

    invoke-static {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->access$800(II)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$1000(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v23

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$100(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v3

    const/4 v9, 0x2

    invoke-static {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->access$800(II)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v9, p0

    move-wide v10, v4

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/wubydax/NetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v9}, Lcom/android/wubydax/NetworkTraffic;->access$1200(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v20 .. v21}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-virtual {v9}, Lcom/android/wubydax/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    const/4 v9, 0x0

    move/from16 v0, v23

    int-to-float v10, v0

    invoke-virtual {v3, v9, v10}, Lcom/android/wubydax/NetworkTraffic;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/wubydax/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/wubydax/NetworkTraffic;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const-string v8, "b/s"

    const-wide/16 v10, 0x8

    mul-long/2addr v12, v10

    const-wide/16 v10, 0x8

    mul-long/2addr v6, v10

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/wubydax/NetworkTraffic$1;->this$0:Lcom/android/wubydax/NetworkTraffic;

    invoke-static {v3}, Lcom/android/wubydax/NetworkTraffic;->access$1100(Lcom/android/wubydax/NetworkTraffic;)I

    move-result v23

    goto :goto_3
.end method
