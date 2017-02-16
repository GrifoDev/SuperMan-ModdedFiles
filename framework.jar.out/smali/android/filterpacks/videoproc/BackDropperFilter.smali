.class public Landroid/filterpacks/videoproc/BackDropperFilter;
.super Landroid/filterfw/core/Filter;
.source "BackDropperFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCEPT_STDDEV:F = 0.85f

.field private static final DEFAULT_ADAPT_RATE_BG:F = 0.0f

.field private static final DEFAULT_ADAPT_RATE_FG:F = 0.0f

.field private static final DEFAULT_AUTO_WB_SCALE:Ljava/lang/String; = "0.25"

.field private static final DEFAULT_BG_FIT_TRANSFORM:[F

.field private static final DEFAULT_EXPOSURE_CHANGE:F = 1.0f

.field private static final DEFAULT_HIER_LRG_EXPONENT:I = 0x3

.field private static final DEFAULT_HIER_LRG_SCALE:F = 0.7f

.field private static final DEFAULT_HIER_MID_EXPONENT:I = 0x2

.field private static final DEFAULT_HIER_MID_SCALE:F = 0.6f

.field private static final DEFAULT_HIER_SML_EXPONENT:I = 0x0

.field private static final DEFAULT_HIER_SML_SCALE:F = 0.5f

.field private static final DEFAULT_LEARNING_ADAPT_RATE:F = 0.2f

.field private static final DEFAULT_LEARNING_DONE_THRESHOLD:I = 0x14

.field private static final DEFAULT_LEARNING_DURATION:I = 0x28

.field private static final DEFAULT_LEARNING_VERIFY_DURATION:I = 0xa

.field private static final DEFAULT_MASK_BLEND_BG:F = 0.65f

.field private static final DEFAULT_MASK_BLEND_FG:F = 0.95f

.field private static final DEFAULT_MASK_HEIGHT_EXPONENT:I = 0x8

.field private static final DEFAULT_MASK_VERIFY_RATE:F = 0.25f

.field private static final DEFAULT_MASK_WIDTH_EXPONENT:I = 0x8

.field private static final DEFAULT_UV_SCALE_FACTOR:F = 1.35f

.field private static final DEFAULT_WHITE_BALANCE_BLUE_CHANGE:F = 0.0f

.field private static final DEFAULT_WHITE_BALANCE_RED_CHANGE:F = 0.0f

.field private static final DEFAULT_WHITE_BALANCE_TOGGLE:I = 0x0

.field private static final DEFAULT_Y_SCALE_FACTOR:F = 0.4f

.field private static final DISTANCE_STORAGE_SCALE:Ljava/lang/String; = "0.6"

.field private static final MASK_SMOOTH_EXPONENT:Ljava/lang/String; = "2.0"

.field private static final MIN_VARIANCE:Ljava/lang/String; = "3.0"

.field private static final RGB_TO_YUV_MATRIX:Ljava/lang/String; = "0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 "

.field private static final TAG:Ljava/lang/String; = "BackDropperFilter"

.field private static final VARIANCE_STORAGE_SCALE:Ljava/lang/String; = "5.0"

.field private static final mAutomaticWhiteBalance:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

.field private static final mBgDistanceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

.field private static final mBgMaskShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

.field private static final mBgSubtractForceShader:Ljava/lang/String; = "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

.field private static final mBgSubtractShader:Ljava/lang/String; = "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

.field private static final mDebugOutputNames:[Ljava/lang/String;

.field private static final mInputNames:[Ljava/lang/String;

.field private static final mMaskVerifyShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

.field private static final mOutputNames:[Ljava/lang/String;

.field private static mSharedUtilShader:Ljava/lang/String; = null

.field private static final mUpdateBgModelMeanShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

.field private static final mUpdateBgModelVarianceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"


# instance fields
.field private final BACKGROUND_FILL_CROP:I

.field private final BACKGROUND_FIT:I

.field private final BACKGROUND_STRETCH:I

.field private copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

.field private isOpen:Z

.field private mAcceptStddev:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "acceptStddev"
    .end annotation
.end field

.field private mAdaptRateBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateBg"
    .end annotation
.end field

.field private mAdaptRateFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateFg"
    .end annotation
.end field

.field private mAdaptRateLearning:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningAdaptRate"
    .end annotation
.end field

.field private mAutoWB:Landroid/filterfw/core/GLFrame;

.field private mAutoWBToggle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "autowbToggle"
    .end annotation
.end field

.field private mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

.field private mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mBackgroundFitMode:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "backgroundFitMode"
    .end annotation
.end field

.field private mBackgroundFitModeChanged:Z

.field private mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgInput:Landroid/filterfw/core/GLFrame;

.field private mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgMean:[Landroid/filterfw/core/GLFrame;

.field private mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgVariance:[Landroid/filterfw/core/GLFrame;

.field private mChromaScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "chromaScale"
    .end annotation
.end field

.field private mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

.field private mDistance:Landroid/filterfw/core/GLFrame;

.field private mExposureChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "exposureChange"
    .end annotation
.end field

.field private mFrameCount:I

.field private mHierarchyLrgExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgExp"
    .end annotation
.end field

.field private mHierarchyLrgScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgScale"
    .end annotation
.end field

.field private mHierarchyMidExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidExp"
    .end annotation
.end field

.field private mHierarchyMidScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidScale"
    .end annotation
.end field

.field private mHierarchySmlExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlExp"
    .end annotation
.end field

.field private mHierarchySmlScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlScale"
    .end annotation
.end field

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDoneListener"
    .end annotation
.end field

.field private mLearningDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDuration"
    .end annotation
.end field

.field private mLearningVerifyDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningVerifyDuration"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mLumScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "lumScale"
    .end annotation
.end field

.field private mMask:Landroid/filterfw/core/GLFrame;

.field private mMaskAverage:Landroid/filterfw/core/GLFrame;

.field private mMaskBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskBg"
    .end annotation
.end field

.field private mMaskFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskFg"
    .end annotation
.end field

.field private mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mMaskHeightExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskHeightExp"
    .end annotation
.end field

.field private mMaskVerify:[Landroid/filterfw/core/GLFrame;

.field private mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

.field private mMaskWidthExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskWidthExp"
    .end annotation
.end field

.field private mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mMirrorBg:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "mirrorBg"
    .end annotation
.end field

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPingPong:Z

.field private mProvideDebugOutputs:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "provideDebugOutputs"
    .end annotation
.end field

.field private mPyramidDepth:I

.field private mRelativeAspect:F

.field private mStartLearning:Z

.field private mSubsampleLevel:I

.field private mUseTheForce:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "useTheForce"
    .end annotation
.end field

.field private mVerifyRate:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskVerifyRate"
    .end annotation
.end field

.field private mVideoInput:Landroid/filterfw/core/GLFrame;

.field private mWhiteBalanceBlueChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceblueChange"
    .end annotation
.end field

.field private mWhiteBalanceRedChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceredChange"
    .end annotation
.end field

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    .line 203
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "video"

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "background"

    aput-object v1, v0, v3

    .line 203
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    .line 206
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "video"

    aput-object v1, v0, v2

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    .line 208
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "debug1"

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "debug2"

    aput-object v1, v0, v3

    .line 208
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    .line 225
    const-string/jumbo v0, "precision mediump float;\nuniform float fg_adapt_rate;\nuniform float bg_adapt_rate;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float dist_scale = 0.6;\nconst float inv_dist_scale = 1. / dist_scale;\nconst float var_scale=5.0;\nconst float inv_var_scale = 1. / var_scale;\nconst float min_variance = inv_var_scale *3.0/ 256.;\nconst float auto_wb_scale = 0.25;\n\nfloat gauss_dist_y(float y, float mean, float variance) {\n  float dist = (y - mean) * (y - mean) / variance;\n  return dist;\n}\nfloat gauss_dist_uv(vec2 uv, vec2 mean, vec2 variance) {\n  vec2 dist = (uv - mean) * (uv - mean) / variance;\n  return dist.r + dist.g;\n}\nfloat local_adapt_rate(float alpha) {\n  return mix(bg_adapt_rate, fg_adapt_rate, alpha);\n}\n\n"

    .line 224
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    .line 41
    return-void

    .line 178
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 509
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_STRETCH:I

    .line 45
    const/4 v2, 0x1

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FIT:I

    .line 46
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FILL_CROP:I

    .line 49
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    .line 51
    const/16 v2, 0x28

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    .line 53
    const/16 v2, 0xa

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    .line 55
    const v2, 0x3f59999a    # 0.85f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 57
    const v2, 0x3f333333    # 0.7f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    .line 59
    const v2, 0x3f19999a    # 0.6f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    .line 61
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    .line 66
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    .line 68
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    .line 73
    const/4 v2, 0x3

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    .line 75
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    .line 77
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    .line 80
    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    .line 82
    const v2, 0x3faccccd    # 1.35f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    .line 84
    const v2, 0x3f266666    # 0.65f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    .line 86
    const v2, 0x3f733333    # 0.95f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    .line 90
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    .line 92
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    .line 94
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    .line 98
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    .line 100
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    .line 102
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    .line 104
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 109
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    .line 112
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    .line 117
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    .line 122
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    .line 860
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    .line 511
    const-string/jumbo v2, "BackDropperFilter"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    .line 513
    const-string/jumbo v2, "ro.media.effect.bgdropper.adj"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "adjStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 516
    :try_start_0
    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 517
    iget-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    .line 518
    const-string/jumbo v2, "BackDropperFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adjusting accept threshold by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 519
    const-string/jumbo v4, ", now "

    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 519
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "BackDropperFilter"

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Badly formatted property ro.media.effect.bgdropper.adj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V
    .locals 13
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 608
    invoke-direct {p0, p1}, Landroid/filterpacks/videoproc/BackDropperFilter;->createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 609
    return-void

    .line 611
    :cond_0
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BackDropperFilter"

    const-string/jumbo v7, "Allocating BackDropperFilter frames"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v4

    .line 615
    .local v4, "numBytes":I
    new-array v1, v4, [B

    .line 616
    .local v1, "initialBgMean":[B
    new-array v2, v4, [B

    .line 617
    .local v2, "initialBgVariance":[B
    new-array v3, v4, [B

    .line 618
    .local v3, "initialMaskVerify":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 619
    const/16 v6, -0x80

    aput-byte v6, v1, v0

    .line 620
    const/16 v6, 0xa

    aput-byte v6, v2, v0

    .line 621
    aput-byte v10, v3, v0

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_3

    .line 626
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    aput-object v6, v7, v0

    .line 627
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v6, v6, v0

    invoke-virtual {v6, v1, v10, v4}, Landroid/filterfw/core/Frame;->setData([BII)V

    .line 629
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    aput-object v6, v7, v0

    .line 630
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v6, v6, v0

    invoke-virtual {v6, v2, v10, v4}, Landroid/filterfw/core/Frame;->setData([BII)V

    .line 632
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    aput-object v6, v7, v0

    .line 633
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3, v10, v4}, Landroid/filterfw/core/Frame;->setData([BII)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_3
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "BackDropperFilter"

    const-string/jumbo v7, "Done allocating texture for Mean and Variance objects!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_4
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    .line 640
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    .line 641
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    .line 642
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    .line 643
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    .line 644
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/GLFrame;

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    .line 647
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    .line 648
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "subsample_level"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    .line 651
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "accept_variance"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    new-array v5, v12, [F

    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    aput v6, v5, v10

    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    aput v6, v5, v11

    .line 653
    .local v5, "yuvWeights":[F
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "yuv_weights"

    invoke-virtual {v6, v7, v5}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "scale_lrg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "scale_mid"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "scale_sml"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "exp_lrg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "exp_mid"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "exp_sml"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    if-eqz v6, :cond_6

    .line 662
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    .line 666
    :goto_2
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "bg_fit_transform"

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "mask_blend_bg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "mask_blend_fg"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "exposure_change"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "whitebalanceblue_change"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "whitebalancered_change"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    .line 675
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "subsample_level"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    .line 678
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "subsample_level"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    invoke-static {p2}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v6

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    .line 682
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    .line 683
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "pyramid_depth"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "autowb_toggle"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    .line 687
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v7, "verify_rate"

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "BackDropperFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Shader width set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 693
    iput v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 694
    iput-boolean v11, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    .line 607
    return-void

    .line 664
    :cond_6
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    goto/16 :goto_2
.end method

.method private createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z
    .locals 11
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 563
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-eqz v6, :cond_0

    .line 564
    return v7

    .line 567
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    .line 568
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    if-nez v6, :cond_2

    .line 569
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Attempting to process input frame with unknown size"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 572
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 573
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    int-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v2, v6

    .line 574
    .local v2, "maskWidth":I
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    int-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v1, v6

    .line 575
    .local v1, "maskHeight":I
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 577
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    .line 578
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 579
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 580
    .local v5, "widthExp":I
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 581
    .local v0, "heightExp":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    .line 582
    int-to-double v6, v5

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 583
    .local v4, "memWidth":I
    int-to-double v6, v0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 584
    .local v3, "memHeight":I
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 585
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    .line 587
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v6, :cond_3

    .line 588
    const-string/jumbo v6, "BackDropperFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mask frames size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string/jumbo v6, "BackDropperFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Pyramid levels "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v6, "BackDropperFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Memory frames size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 594
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v6, v10, v10}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 595
    return v10
.end method

.method private pyramidLevel(I)I
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 995
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V
    .locals 11
    .param p1, "video"    # Landroid/filterfw/core/Frame;
    .param p2, "background"    # Landroid/filterfw/core/Frame;
    .param p3, "fitModeChanged"    # Z

    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 928
    .local v3, "foregroundAspect":F
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 929
    .local v0, "backgroundAspect":F
    div-float v2, v3, v0

    .line 930
    .local v2, "currentRelativeAspect":F
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    cmpl-float v8, v2, v8

    if-nez v8, :cond_0

    if-eqz p3, :cond_5

    .line 931
    :cond_0
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 932
    const/4 v4, 0x0

    .local v4, "xMin":F
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "xWidth":F
    const/4 v6, 0x0

    .local v6, "yMin":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 933
    .local v7, "yWidth":F
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    packed-switch v8, :pswitch_data_0

    .line 971
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    if-eqz v8, :cond_3

    .line 972
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "BackDropperFilter"

    const-string/jumbo v9, "Mirroring the background!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    if-eqz v8, :cond_2

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    const/16 v9, 0xb4

    if-ne v8, v9, :cond_8

    .line 975
    :cond_2
    neg-float v5, v5

    .line 976
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v4, v8, v4

    .line 983
    :cond_3
    :goto_1
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "BackDropperFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bgTransform: xMin, yMin, xWidth, yWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 984
    const-string/jumbo v10, ", "

    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 984
    const-string/jumbo v10, ", "

    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 984
    const-string/jumbo v10, ", "

    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 985
    const-string/jumbo v10, ", mRelAspRatio = "

    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 985
    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_4
    const/16 v8, 0x9

    new-array v1, v8, [F

    const/4 v8, 0x0

    aput v5, v1, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v1, v9

    const/4 v8, 0x0

    const/4 v9, 0x2

    aput v8, v1, v9

    .line 988
    const/4 v8, 0x0

    const/4 v9, 0x3

    aput v8, v1, v9

    const/4 v8, 0x4

    aput v7, v1, v8

    const/4 v8, 0x0

    const/4 v9, 0x5

    aput v8, v1, v9

    .line 989
    const/4 v8, 0x6

    aput v4, v1, v8

    const/4 v8, 0x7

    aput v6, v1, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x8

    aput v8, v1, v9

    .line 990
    .local v1, "bgTransform":[F
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v9, "bg_fit_transform"

    invoke-virtual {v8, v9, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 926
    .end local v1    # "bgTransform":[F
    .end local v4    # "xMin":F
    .end local v5    # "xWidth":F
    .end local v6    # "yMin":F
    .end local v7    # "yWidth":F
    :cond_5
    return-void

    .line 938
    .restart local v4    # "xMin":F
    .restart local v5    # "xWidth":F
    .restart local v6    # "yMin":F
    .restart local v7    # "yWidth":F
    :pswitch_1
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 941
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float v4, v9, v8

    .line 942
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v5, v9, v8

    goto/16 :goto_0

    .line 946
    :cond_6
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f000000    # 0.5f

    div-float v8, v9, v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float v6, v9, v8

    .line 947
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v7, v9, v8

    goto/16 :goto_0

    .line 951
    :pswitch_2
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    .line 954
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f000000    # 0.5f

    div-float v8, v9, v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float v6, v9, v8

    .line 955
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v7, v9, v8

    goto/16 :goto_0

    .line 959
    :cond_7
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float v4, v9, v8

    .line 960
    iget v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    goto/16 :goto_0

    .line 979
    :cond_8
    neg-float v7, v7

    .line 980
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    goto/16 :goto_1

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x0

    .line 863
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v1, :cond_0

    .line 864
    return-void

    .line 867
    :cond_0
    iget-boolean v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BackDropperFilter"

    const-string/jumbo v2, "Filter Closing!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 869
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 870
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 871
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    :cond_2
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 874
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 875
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 876
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 877
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 878
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 880
    iput-object v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 862
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x1

    .line 892
    const-string/jumbo v1, "backgroundFitMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    const-string/jumbo v1, "acceptStddev"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 895
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "accept_variance"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 896
    :cond_2
    const-string/jumbo v1, "hierLrgScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 897
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "scale_lrg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 898
    :cond_3
    const-string/jumbo v1, "hierMidScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 899
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "scale_mid"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 900
    :cond_4
    const-string/jumbo v1, "hierSmlScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 901
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "scale_sml"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 902
    :cond_5
    const-string/jumbo v1, "hierLrgExp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 903
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "exp_lrg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 904
    :cond_6
    const-string/jumbo v1, "hierMidExp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 905
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "exp_mid"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 906
    :cond_7
    const-string/jumbo v1, "hierSmlExp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 907
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "exp_sml"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 908
    :cond_8
    const-string/jumbo v1, "lumScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "chromaScale"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 909
    :cond_9
    const/4 v1, 0x2

    new-array v0, v1, [F

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    aput v1, v0, v3

    .line 910
    .local v0, "yuvWeights":[F
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "yuv_weights"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 911
    .end local v0    # "yuvWeights":[F
    :cond_a
    const-string/jumbo v1, "maskBg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 912
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "mask_blend_bg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 913
    :cond_b
    const-string/jumbo v1, "maskFg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 914
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "mask_blend_fg"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 915
    :cond_c
    const-string/jumbo v1, "exposureChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 916
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "exposure_change"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 917
    :cond_d
    const-string/jumbo v1, "whitebalanceredChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 918
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "whitebalancered_change"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 919
    :cond_e
    const-string/jumbo v1, "whitebalanceblueChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 920
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "whitebalanceblue_change"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 921
    :cond_f
    const-string/jumbo v1, "autowbToggle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "autowb_toggle"

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v2, 0x0

    .line 553
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 555
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    sget-object v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0, v2, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 558
    :cond_0
    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x2

    .line 599
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BackDropperFilter"

    const-string/jumbo v1, "Preparing BackDropperFilter!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    .line 602
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    .line 603
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    .line 604
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    .line 598
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 30
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 699
    const-string/jumbo v22, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v21

    .line 700
    .local v21, "video":Landroid/filterfw/core/Frame;
    const-string/jumbo v22, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 701
    .local v5, "background":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V

    .line 704
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 705
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    const-string/jumbo v22, "BackDropperFilter"

    const-string/jumbo v23, "Starting learning"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 714
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    const/4 v12, 0x0

    .line 715
    .local v12, "inputIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v18, 0x1

    .line 716
    .local v18, "outputIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    .line 719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V

    .line 720
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    .line 729
    const/16 v24, 0x2701

    .line 728
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    .line 733
    const/16 v24, 0x2701

    .line 732
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 735
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    aget-object v24, v24, v12

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 737
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    .line 741
    :cond_2
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v9, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v9, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x1

    aput-object v22, v9, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x2

    aput-object v22, v9, v23

    .line 742
    .local v9, "distInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    .line 745
    const/16 v24, 0x2701

    .line 744
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2801

    .line 750
    const/16 v24, 0x2701

    .line 749
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 752
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v4, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-object v22, v4, v23

    .line 753
    .local v4, "autoWBInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_10

    .line 757
    const-string/jumbo v22, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 759
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    aget-object v24, v24, v18

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "bg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    const-string/jumbo v23, "fg_adapt_rate"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 783
    .local v13, "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    .line 784
    .local v15, "mask_average":[B
    const/16 v22, 0x3

    aget-byte v22, v15, v22

    move/from16 v0, v22

    and-int/lit16 v6, v0, 0xff

    .line 786
    .local v6, "bi":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 787
    const-string/jumbo v22, "BackDropperFilter"

    .line 788
    const-string/jumbo v23, "Mask_average is %d, threshold is %d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 789
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const/16 v25, 0x14

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1

    aput-object v25, v24, v26

    .line 788
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 787
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_4
    const/16 v22, 0x14

    move/from16 v0, v22

    if-lt v6, v0, :cond_e

    .line 793
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    .line 810
    .end local v6    # "bi":I
    .end local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "mask_average":[B
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_11

    .line 812
    :cond_6
    :goto_5
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v16, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x1

    aput-object v22, v16, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aput-object v22, v16, v23

    .line 813
    .local v16, "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x2801

    .line 816
    const/16 v24, 0x2701

    .line 815
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 818
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v20, v0

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v20, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x1

    aput-object v22, v20, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x2

    aput-object v22, v20, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aput-object v22, v20, v23

    .line 821
    .local v20, "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x2801

    .line 824
    const/16 v24, 0x2701

    .line 823
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 828
    .end local v16    # "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    .end local v20    # "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 830
    .local v7, "dbg1":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 831
    const-string/jumbo v22, "debug1"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 832
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    .line 835
    .local v8, "dbg2":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 836
    const-string/jumbo v22, "debug2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 837
    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 840
    .end local v7    # "dbg1":Landroid/filterfw/core/Frame;
    .end local v8    # "dbg2":Landroid/filterfw/core/Frame;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 842
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    rem-int/lit8 v22, v22, 0x1e

    if-nez v22, :cond_9

    .line 844
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_12

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 846
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    .line 697
    :cond_9
    :goto_6
    return-void

    .line 714
    .end local v4    # "autoWBInputs":[Landroid/filterfw/core/Frame;
    .end local v9    # "distInputs":[Landroid/filterfw/core/Frame;
    .end local v12    # "inputIndex":I
    .end local v18    # "outputIndex":I
    :cond_a
    const/4 v12, 0x1

    .restart local v12    # "inputIndex":I
    goto/16 :goto_0

    .line 715
    :cond_b
    const/16 v18, 0x0

    .restart local v18    # "outputIndex":I
    goto/16 :goto_1

    .line 716
    :cond_c
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 768
    .restart local v4    # "autoWBInputs":[Landroid/filterfw/core/Frame;
    .restart local v9    # "distInputs":[Landroid/filterfw/core/Frame;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 771
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v14, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v12

    const/16 v23, 0x0

    aput-object v22, v14, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-object v22, v14, v23

    .line 772
    .local v14, "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v23, v0

    aget-object v23, v23, v18

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    aget-object v22, v22, v18

    const/16 v23, 0x2801

    .line 775
    const/16 v24, 0x2701

    .line 774
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    goto/16 :goto_3

    .line 795
    .end local v14    # "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    .restart local v6    # "bi":I
    .restart local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "mask_average":[B
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    const-string/jumbo v22, "BackDropperFilter"

    const-string/jumbo v23, "Learning done"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;->onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V

    goto/16 :goto_4

    .line 802
    .end local v6    # "bi":I
    .end local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "mask_average":[B
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v17

    .line 803
    .local v17, "output":Landroid/filterfw/core/Frame;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    aput-object v21, v19, v22

    const/16 v22, 0x1

    aput-object v5, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aput-object v22, v19, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aput-object v22, v19, v23

    .line 804
    .local v19, "subtractInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 805
    const-string/jumbo v22, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 806
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto/16 :goto_4

    .line 811
    .end local v17    # "output":Landroid/filterfw/core/Frame;
    .end local v19    # "subtractInputs":[Landroid/filterfw/core/Frame;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_7

    goto/16 :goto_5

    .line 849
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 850
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 852
    .local v10, "endTime":J
    const-string/jumbo v22, "BackDropperFilter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Avg. frame duration: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "%.2f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-wide/from16 v26, v0

    sub-long v26, v10, v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x403e000000000000L    # 30.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 853
    const-string/jumbo v24, " ms. Avg. fps: "

    .line 852
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 853
    const-string/jumbo v24, "%.2f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-wide/from16 v26, v0

    sub-long v26, v10, v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x403e000000000000L    # 30.0

    div-double v26, v26, v28

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v26, v28, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 852
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    goto/16 :goto_6
.end method

.method public declared-synchronized relearn()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 886
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 884
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupPorts()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 532
    const/4 v4, 0x3

    invoke-static {v4, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 534
    .local v0, "imageFormat":Landroid/filterfw/core/FrameFormat;
    sget-object v5, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 535
    .local v1, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "inputName":Ljava/lang/String;
    :cond_0
    sget-object v5, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 539
    .local v2, "outputName":Ljava/lang/String;
    const-string/jumbo v7, "video"

    invoke-virtual {p0, v2, v7}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 543
    .end local v2    # "outputName":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    if-eqz v4, :cond_2

    .line 544
    sget-object v4, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 545
    .restart local v2    # "outputName":Ljava/lang/String;
    const-string/jumbo v6, "video"

    invoke-virtual {p0, v2, v6}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 529
    .end local v2    # "outputName":Ljava/lang/String;
    :cond_2
    return-void
.end method
