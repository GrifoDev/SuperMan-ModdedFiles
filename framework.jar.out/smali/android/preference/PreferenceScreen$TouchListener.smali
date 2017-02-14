.class Landroid/preference/PreferenceScreen$TouchListener;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceScreen;


# direct methods
.method private constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen$TouchListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/PreferenceScreen$TouchListener;-><init>(Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->-set4(Landroid/preference/PreferenceScreen;Z)Z

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v7

    :pswitch_0
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v7}, Landroid/preference/PreferenceScreen;->-set3(Landroid/preference/PreferenceScreen;Z)Z

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->-set5(Landroid/preference/PreferenceScreen;F)F

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->-set3(Landroid/preference/PreferenceScreen;Z)Z

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v9}, Landroid/preference/PreferenceScreen;->-get3(Landroid/preference/PreferenceScreen;)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v5, v8}, Landroid/preference/PreferenceScreen;->-set6(Landroid/preference/PreferenceScreen;F)F

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get4(Landroid/preference/PreferenceScreen;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v8, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v8}, Landroid/preference/PreferenceScreen;->-get5(Landroid/preference/PreferenceScreen;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->-set2(Landroid/preference/PreferenceScreen;Z)Z

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get1(Landroid/preference/PreferenceScreen;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v8, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get4(Landroid/preference/PreferenceScreen;)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_4

    move v5, v6

    :goto_1
    invoke-static {v8, v5}, Landroid/preference/PreferenceScreen;->-set1(Landroid/preference/PreferenceScreen;Z)Z

    :goto_2
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v7}, Landroid/preference/PreferenceScreen;->-set2(Landroid/preference/PreferenceScreen;Z)Z

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    :goto_3
    if-gt v1, v2, :cond_1

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get2(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    iget-object v8, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get4(Landroid/preference/PreferenceScreen;)F

    move-result v5

    cmpl-float v5, v5, v11

    if-lez v5, :cond_6

    move v5, v6

    :goto_4
    invoke-static {v8, v5}, Landroid/preference/PreferenceScreen;->-set1(Landroid/preference/PreferenceScreen;Z)Z

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get6(Landroid/preference/PreferenceScreen;)I

    move-result v5

    if-eq v5, v10, :cond_8

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get6(Landroid/preference/PreferenceScreen;)I

    move-result v5

    if-eq v5, v1, :cond_8

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->-set0(Landroid/preference/PreferenceScreen;Z)Z

    :cond_8
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v1}, Landroid/preference/PreferenceScreen;->-set7(Landroid/preference/PreferenceScreen;I)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v10}, Landroid/preference/PreferenceScreen;->-set7(Landroid/preference/PreferenceScreen;I)I

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5}, Landroid/preference/PreferenceScreen;->-get0(Landroid/preference/PreferenceScreen;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->-set2(Landroid/preference/PreferenceScreen;Z)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-static {v5, v10}, Landroid/preference/PreferenceScreen;->-set7(Landroid/preference/PreferenceScreen;I)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
