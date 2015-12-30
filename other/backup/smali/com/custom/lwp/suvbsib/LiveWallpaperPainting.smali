.class public Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;
.super Landroid/service/wallpaper/WallpaperService;
.source "LiveWallpaperPainting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;
    }
.end annotation


# static fields
.field public static final PREFERENCES:Ljava/lang/String; = "com.custom.lwp.suvbsib"

.field public static final PREFERENCE_FPS:Ljava/lang/String; = "preference_fps"

.field public static final PREFERENCE_SIZE:Ljava/lang/String; = "preference_size"


# instance fields
.field bitmaps:[Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->mHandler:Landroid/os/Handler;

    .line 296
    const/16 v0, 0x12c

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 18
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;

    invoke-direct {v0, p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;-><init>(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 23
    return-void
.end method

.method public setBitMaps()V
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 32
    .local v1, r:Ljava/lang/Runtime;
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 35
    const v5, 0x7f020001

    .line 34
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 36
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 37
    const v5, 0x7f020002

    .line 36
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 38
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 39
    const v5, 0x7f020003

    .line 38
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 40
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 41
    const v5, 0x7f020004

    .line 40
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 42
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 43
    const v5, 0x7f020005

    .line 42
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 44
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 45
    const v5, 0x7f020006

    .line 44
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 46
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 47
    const v5, 0x7f020007

    .line 46
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 48
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 49
    const v5, 0x7f020008

    .line 48
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 50
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 51
    const v5, 0x7f020009

    .line 50
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 52
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 53
    const v5, 0x7f02000a

    .line 52
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 54
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 55
    const v5, 0x7f02000b

    .line 54
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 56
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 57
    const v5, 0x7f02000c

    .line 56
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 58
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 59
    const v5, 0x7f02000d

    .line 58
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 60
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 61
    const v5, 0x7f02000e

    .line 60
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 62
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 63
    const v5, 0x7f02000f

    .line 62
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 64
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 65
    const v5, 0x7f020010

    .line 64
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 66
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 67
    const v5, 0x7f020011

    .line 66
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 68
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 69
    const v5, 0x7f020012

    .line 68
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 71
    const v5, 0x7f020013

    .line 70
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 72
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 73
    const v5, 0x7f020014

    .line 72
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 74
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 75
    const v5, 0x7f020015

    .line 74
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 76
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 77
    const v5, 0x7f020016

    .line 76
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x16

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 79
    const v5, 0x7f020017

    .line 78
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 80
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 81
    const v5, 0x7f020018

    .line 80
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 82
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 83
    const v5, 0x7f020019

    .line 82
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 84
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    const v5, 0x7f02001a

    .line 84
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 86
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 87
    const v5, 0x7f02001b

    .line 86
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 88
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    const v5, 0x7f02001c

    .line 88
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 90
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x1c

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 91
    const v5, 0x7f02001d

    .line 90
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 93
    const v5, 0x7f02001e

    .line 92
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 94
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x1e

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    const v5, 0x7f02001f

    .line 94
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 96
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x1f

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 97
    const v5, 0x7f020020

    .line 96
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 98
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 99
    const v5, 0x7f020021

    .line 98
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 100
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 101
    const v5, 0x7f020022

    .line 100
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 102
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x22

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    const v5, 0x7f020023

    .line 102
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 104
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 105
    const v5, 0x7f020024

    .line 104
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 106
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x24

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 107
    const v5, 0x7f020025

    .line 106
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x25

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 109
    const v5, 0x7f020026

    .line 108
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 110
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x26

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 111
    const v5, 0x7f020027

    .line 110
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 112
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x27

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 113
    const v5, 0x7f020028

    .line 112
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 114
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x28

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 115
    const v5, 0x7f020029

    .line 114
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x29

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 117
    const v5, 0x7f02002a

    .line 116
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 118
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x2a

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 119
    const v5, 0x7f02002b

    .line 118
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 120
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x2b

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 121
    const v5, 0x7f02002c

    .line 120
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x2c

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 123
    const v5, 0x7f02002d

    .line 122
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 124
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x2d

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 125
    const v5, 0x7f02002e

    .line 124
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x2e

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 127
    const v5, 0x7f02002f

    .line 126
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 128
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x2f

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 129
    const v5, 0x7f020030

    .line 128
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 130
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x30

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 131
    const v5, 0x7f020031

    .line 130
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
	
	
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x31

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020032

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x32

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020033

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x33

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020034

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x34

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020035

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x35

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020036

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x36

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020037

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x37

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020038

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x38

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020039

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x39

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x3a

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x3b

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x3c

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x3d

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x3e

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x3f

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020040

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x40

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020041

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x41

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020042

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x42

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020043

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x43

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020044

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x44

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020045

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x45

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020046

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x46

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020047

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x47

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020048

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x48

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x49

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x4a

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x4b

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x4c

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x4d

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x4e

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x4f

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020050

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x50

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020051

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x51

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020052

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x52

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020053

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x53

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020054

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x54

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020055

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x55

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020056

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x56

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020057

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x57

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020058

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x58

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020059

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x59

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005a

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x5a

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x5b

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x5c

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x5d

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x5e

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x5f

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020060

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x60

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020061

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x61

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020062

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x62

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020063

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

     iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    const/16 v3, 0x63

    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020064

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
	

iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000064

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020065

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000065

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020066

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000066

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020067

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000067

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020068

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000068

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020069

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000069

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02006A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000006A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02006B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000006B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02006C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000006C

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02006D

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000006D

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02006E

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000006E

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02006F

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000006F

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020070

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000070

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020071

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000071

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020072

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000072

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020073

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000073

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020074

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000074

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020075

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000075

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020076

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000076

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020077

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000077

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020078

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000078

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020079

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000079

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02007A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000007A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02007B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000007B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02007C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000007C

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02007D

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000007D

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02007E

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000007E

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02007F

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000007F

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020080

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000080

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020081

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000081

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020082

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000082

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020083

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000083

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020084

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000084

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020085

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000085

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020086

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000086

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020087

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000087

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020088

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000088

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020089

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000089

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02008A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000008A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02008B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000008B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02008C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000008C

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02008D

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000008D

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02008E

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000008E

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02008F

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000008F

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020090

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000090

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020091

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000091

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020092

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000092

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020093

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000093

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020094

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000094

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020095

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000095

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020096

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000096

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020097

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000097

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020098

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000098

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020099

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000099

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02009A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000009A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02009B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000009B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02009C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000009C

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02009D

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000009D

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02009E

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000009E

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02009F

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000009F

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A0

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A0

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A1

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A1

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A2

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A2

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A3

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A3

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A4

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A4

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A5

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A5

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A6

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A6

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A7

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A7

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A8

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A8

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200A9

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000A9

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200AA

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000AA

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200AB

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000AB

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200AC

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000AC

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200AD

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000AD

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200AE

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000AE

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200AF

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000AF

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B0

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B0

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B1

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B1

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B2

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B2

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B3

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B3

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B4

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B4

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B5

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B5

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B6

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B6

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B7

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B7

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B8

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B8

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200B9

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000B9

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200BA

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000BA

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200BB

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000BB

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200BC

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000BC

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200BD

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000BD

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200BE

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000BE

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200BF

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000BF

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C0

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C0

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C1

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C1

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C2

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C2

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C3

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C3

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C4

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C4

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C5

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C5

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C6

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C6

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C7

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C7

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C8

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C8

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200C9

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000C9

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200CA

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000CA

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200CB

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000CB

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200CC

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000CC

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200CD

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000CD

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200CE

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000CE

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200CF

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000CF

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D0

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D0

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D1

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D1

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D2

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D2

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D3

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D3

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D4

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D4

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D5

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D5

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D6

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D6

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D7

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D7

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D8

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D8

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200D9

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000D9

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200DA

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000DA

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200DB

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000DB

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200DC

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000DC

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200DD

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000DD

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200DE

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000DE

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200DF

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000DF

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E0

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E0

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E1

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E1

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E2

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E2

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E3

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E3

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E4

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E4

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E5

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E5

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E6

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E6

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E7

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E7

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E8

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E8

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200E9

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000E9

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200EA

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000EA

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200EB

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000EB

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200EC

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000EC

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200ED

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000ED

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200EE

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000EE

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200EF

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000EF

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F0

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F0

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F1

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F1

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F2

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F2

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F3

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F3

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F4

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F4

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F5

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F5

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F6

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F6

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F7

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F7

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F8

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F8

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200F9

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000F9

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200FA

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000FA

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200FB

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000FB

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200FC

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000FC

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200FD

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000FD

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200FE

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000FE

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F0200FF

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x000000FF

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020100

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000100

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020101

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000101

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020102

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000102

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020103

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000103

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020104

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000104

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020105

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000105

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020106

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000106

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020107

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000107

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020108

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000108

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020109

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000109

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02010A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000010A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02010B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000010B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02010C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000010C

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02010D

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000010D

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02010E

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000010E

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02010F

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000010F

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020110

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000110

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020111

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000111

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020112

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000112

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020113

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000113

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020114

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000114

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020115

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000115

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020116

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000116

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020117

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000117

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020118

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000118

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020119

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000119

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02011A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000011A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02011B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000011B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02011C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000011C

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02011D

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000011D

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02011E

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000011E

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02011F

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000011F

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020120

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000120

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020121

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000121

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020122

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000122

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020123

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000123

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020124

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000124

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020125

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000125

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020126

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000126

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020127

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000127

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020128

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000128

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F020129

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x00000129

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02012A

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000012A

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02012B

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3



iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

const/16 v3,0x0000012B

invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getResources()Landroid/content/res/Resources;

move-result-object v4

const v5,0x7F02012C

invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

move-result-object v4

aput-object v4, v2, v3


    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->setBitMaps()V

    goto :goto_0
.end method
