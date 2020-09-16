.class public Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
.super Landroid/view/ViewGroup;
.source "ScreenStackHeaderConfig.java"


# instance fields
.field private mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBackgroundColor:I

.field private final mConfigSubviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mIsAttachedToWindow:Z

.field private mIsBackButtonHidden:Z

.field private mIsHidden:Z

.field private mIsShadowHidden:Z

.field private mTintColor:I

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:I

.field private mTitleFontFamily:Ljava/lang/String;

.field private mTitleFontSize:F

.field private final mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    .line 41
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)V

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackClickListener:Landroid/view/View$OnClickListener;

    const/16 v1, 0x8

    .line 59
    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->setVisibility(I)V

    .line 61
    new-instance v1, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v1, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 65
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0, v0}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 68
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010433

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStack;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p0

    return-object p0
.end method

.method private getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTitleTextView()Landroid/widget/TextView;
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 269
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 270
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 271
    check-cast v2, Landroid/widget/TextView;

    .line 272
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeUpdate()V
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->onUpdate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addConfigSubview(Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 264
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->maybeUpdate()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDestroyed:Z

    return-void
.end method

.method public getConfigSubview(I)Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    return-object p1
.end method

.method public getConfigSubviewsCount()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->onUpdate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onUpdate()V
    .locals 12

    .line 127
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    .line 128
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 131
    :goto_1
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_13

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDestroyed:Z

    if-eqz v0, :cond_2

    goto/16 :goto_7

    .line 135
    :cond_2
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsHidden:Z

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->removeToolbar()V

    :cond_3
    return-void

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 143
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setToolbar(Landroidx/appcompat/widget/Toolbar;)V

    .line 146
    :cond_5
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 147
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 151
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->canNavigateBack()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsBackButtonHidden:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    iget-boolean v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsShadowHidden:Z

    invoke-virtual {v1, v4}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setToolbarShadowHidden(Z)V

    .line 163
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 165
    iget v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleColor:I

    if-eqz v4, :cond_7

    .line 166
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    :cond_7
    if-eqz v1, :cond_9

    .line 169
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontFamily:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 170
    invoke-static {}, Lcom/facebook/react/views/text/ReactFontManager;->getInstance()Lcom/facebook/react/views/text/ReactFontManager;

    move-result-object v4

    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontFamily:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 170
    invoke-virtual {v4, v5, v2, v6}, Lcom/facebook/react/views/text/ReactFontManager;->getTypeface(Ljava/lang/String;ILandroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    :cond_8
    iget v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontSize:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    .line 174
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    :cond_9
    iget v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackgroundColor:I

    if-eqz v1, :cond_a

    .line 180
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 184
    :cond_a
    iget v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTintColor:I

    if-eqz v1, :cond_b

    .line 185
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 187
    iget v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTintColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    :cond_b
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_3
    if-ltz v1, :cond_d

    .line 193
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    if-eqz v4, :cond_c

    .line 194
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 197
    :cond_d
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_13

    .line 198
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    .line 199
    invoke-virtual {v5}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->getType()Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    move-result-object v6

    .line 201
    sget-object v7, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->BACK:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    if-ne v6, v7, :cond_f

    .line 204
    invoke-virtual {v5, v2}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 205
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_e

    .line 208
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 206
    :cond_e
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Back button header config view should have Image as first child"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_f
    new-instance v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 215
    sget-object v8, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$2;->$SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type:[I

    invoke-virtual {v6}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->ordinal()I

    move-result v6

    aget v6, v8, v6

    const/4 v8, 0x3

    const/4 v10, 0x0

    if-eq v6, v3, :cond_12

    const/4 v11, 0x2

    if-eq v6, v11, :cond_11

    if-eq v6, v8, :cond_10

    goto :goto_5

    .line 227
    :cond_10
    iput v9, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 228
    iput v3, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 229
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    const/4 v6, 0x5

    .line 224
    iput v6, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_5

    .line 219
    :cond_12
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iput v8, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 233
    :goto_5
    invoke-virtual {v5, v7}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_13
    :goto_7
    return-void
.end method

.method public removeAllConfigSubviews()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->maybeUpdate()V

    return-void
.end method

.method public removeConfigSubview(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 254
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->maybeUpdate()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackgroundColor:I

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsHidden:Z

    return-void
.end method

.method public setHideBackButton(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsBackButtonHidden:Z

    return-void
.end method

.method public setHideShadow(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsShadowHidden:Z

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTintColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleColor:I

    return-void
.end method

.method public setTitleFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontFamily:Ljava/lang/String;

    return-void
.end method

.method public setTitleFontSize(F)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontSize:F

    return-void
.end method
