USE [aspnet-BlogEngine-660C5581-F846-4AF6-8B96-301C64873737]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[PostId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_PostCategory] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 11/16/2018 4:19:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDateTime] [datetime2](7) NOT NULL,
	[EditedDateTime] [datetime2](7) NOT NULL,
	[PostedDateTime] [datetime2](7) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Summary] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[IsPublished] [bit] NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181008041524_PostAndCategory', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181114064554_Post_IsPublished', N'2.1.4-rtm-31024')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5791e602-cf3f-4789-b04b-2d85cc2eec97', N'Writer', N'WRITER', N'fcfd5cc1-803a-4488-b7aa-a58210bd96b9')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bd2443b4-a91f-4ecc-bc8c-d8e7ab63ab0b', N'Admin', N'ADMIN', N'00cca912-b81d-4bad-83c3-e2eb072acfd2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'170b937b-7d44-4b68-9682-5bada7c359d2', N'5791e602-cf3f-4789-b04b-2d85cc2eec97')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'56e13673-4264-4eb7-9541-b0a965e23b9c', N'5791e602-cf3f-4789-b04b-2d85cc2eec97')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'170b937b-7d44-4b68-9682-5bada7c359d2', N'bd2443b4-a91f-4ecc-bc8c-d8e7ab63ab0b')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'170b937b-7d44-4b68-9682-5bada7c359d2', N'admin@blogengine.com', N'ADMIN@BLOGENGINE.COM', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELOCRGPB1ZzziF+J3djOJsBjGdTvCmHbj59qvdN9LhcL9SLp2N75ubsXQDTWBz8VZg==', N'IBW2YO5T4PWO4M6T4L7LXG3EHMYFUXGO', N'7f4a3ec2-9ffc-48c7-9b78-2b7afd06e9ce', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'56e13673-4264-4eb7-9541-b0a965e23b9c', N'writer@blogengine.com', N'WRITER@BLOGENGINE.COM', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEC97ms2WQLj3tR4E7HA4gI4LfBt2c6Yd7L7jggIp/YHYHIOFJ6nb2tncOSZmiTtBZw==', N'P6L6LOSBQXQB3ZZGVH4T3ZXHKCX5J6YI', N'8bf39fe4-f364-407e-81d8-dc80744fd9c7', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Machine Learning')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'ASP.NET Core 2.1')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1003, N'Azure')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1004, N'Computer Tips')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[PostCategory] ([PostId], [CategoryId]) VALUES (11, 2)
INSERT [dbo].[PostCategory] ([PostId], [CategoryId]) VALUES (13, 2)
INSERT [dbo].[PostCategory] ([PostId], [CategoryId]) VALUES (14, 2)
INSERT [dbo].[PostCategory] ([PostId], [CategoryId]) VALUES (15, 1003)
INSERT [dbo].[PostCategory] ([PostId], [CategoryId]) VALUES (16, 1003)
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [CreatedDateTime], [EditedDateTime], [PostedDateTime], [Title], [Summary], [Content], [IsPublished]) VALUES (11, CAST(N'2018-11-12T09:26:18.4792963' AS DateTime2), CAST(N'2018-11-15T10:44:48.6525494' AS DateTime2), CAST(N'2018-11-15T10:44:48.6525497' AS DateTime2), N'[ASP.NET] – Query trên các computed property không hỗ trợ LINQ', N'Trong một project gần đây ở công ty, tôi bàng hoàng nhận ra rằng:  LINQ và Entity Framework không hỗ trợ query trên các property được tính toán dựa trên các field khác  Vậy giờ ta phải làm sao? May mắn là vẫn có cách', N'<p>Trong một project gần đ&acirc;y ở c&ocirc;ng ty, t&ocirc;i b&agrave;ng ho&agrave;ng nhận ra rằng:</p>
<blockquote>
<p>LINQ v&agrave; Entity Framework kh&ocirc;ng hỗ trợ query tr&ecirc;n c&aacute;c property được t&iacute;nh to&aacute;n dựa tr&ecirc;n c&aacute;c field kh&aacute;c</p>
</blockquote>
<p>Vậy giờ ta phải l&agrave;m sao? May mắn l&agrave; vẫn c&oacute; c&aacute;ch</p>
<p><!--more--></p>
<p><!-- TOC --></p>
<ul>
<li><a href="#1-computed-property">1. Computed Property</a></li>
<li><a href="#2-simple-linq">2. Simple LINQ</a></li>
<li><a href="#3-solution">3. Solution</a>
<ul>
<li><a href="#31-slow-performance-gọi-tolist">3.1. [Slow performance] Gọi ToList</a></li>
<li><a href="#32-dry-principle-violated-viết-biểu-thức">3.2. [DRY Principle violated] Viết biểu thức</a></li>
</ul>
</li>
<li><a href="#4-the-best-solution">4. The best solution</a></li>
<li><a href="#5-make-life-easier">5. Make life easier</a></li>
</ul>
<p><!-- /TOC --></p>
<h1>1. Computed Property</h1>
<p>L&agrave; một property chỉ c&oacute; h&agrave;m get, v&agrave; trong get đ&oacute;, gi&aacute; trị trả về được t&iacute;nh to&aacute;n dựa tr&ecirc;n c&aacute;c property kh&aacute;c</p>
<pre>[code lang=csharp]
public class TestViewModel
{
    [Required]
    [MaxLength(10, ErrorMessage = "Length must fewer than {1}")]
    public string FirstName { get; set; }

    [Required]
    [StringLength(10)]
    public string LastName { get; set; }

    // Computed Property
    [NotMapped]
    public string FullName =&amp;amp;gt; FirstName + LastName;
}
[/code]</pre>
<p>Theo c&aacute;c chuẩn thiết kế database, một column phải chứa dữ liệu m&agrave; kh&ocirc;ng thể được suy ra từ c&aacute;c dữ liệu kh&aacute;c. Đoạn Attribute <code>[NotMapped]</code> phục vụ cho việc đ&oacute;. EF sẽ kh&ocirc;ng sinh ra code generate column <code>FullName</code> nếu bạn d&ugrave;ng code first, kh&ocirc;ng cố gắng t&igrave;m column <code>FullName</code> trong table nếu bạn d&ugrave;ng database first</p>
<h1>2. Simple LINQ</h1>
<p>Để query một gi&aacute; trị n&agrave;o đ&oacute; trong Database d&ugrave;ng Entity Framework, bạn c&oacute; thể d&ugrave;ng LINQ rất đơn giản như sau</p>
<pre>[code lang=csharp]
// TableNameWithS is your table name in plural

var names = dbContext.TableNameWithS.Where(x =&amp;amp;gt; x.FirstName.Contains("test"));
[/code]</pre>
<p>Nhưng cũng đoạn code đ&oacute; sẽ g&acirc;y lỗi nếu bạn cố gắn d&ugrave;ng n&oacute; với Property <code>FullName</code></p>
<pre>[code lang=csharp]
// BUG BUG BUG

var names = dbContext.TableNameWithS.Where(x =&amp;amp;gt; x.FullName.Contains("test"));
[/code]</pre>
<h1>3. Solution</h1>
<blockquote>
<p>TL;DR: <a href="#4-the-best-solution">The best solution</a></p>
</blockquote>
<h2>3.1. [Slow performance] Gọi ToList</h2>
<pre>[code lang=csharp]
var names = dbContext.TableNameWithS.ToList().Where(x =&amp;amp;gt; x.FullName.Contains("test"));
[/code]</pre>
<p>Gọi ToList sẽ l&agrave;m Entity Framework gọi tới database, thực thi bất kỳ đoạn query n&agrave;o trước đ&oacute;, rồi mới thực thi tới đoạn LINQ c&oacute; computed property của bạn</p>
<p>Nhược điểm của n&oacute; l&agrave; EF sẽ query ra kết quả nhiều hơn so với cần thiết, l&agrave;m giảm performance của ứng dụng</p>
<h2>3.2. [DRY Principle violated] Viết biểu thức</h2>
<p>Một c&aacute;ch kh&aacute;c l&agrave; thay v&igrave; sử dụng computed property, ta c&oacute; thể viết thẳng biểu thức của property đ&oacute; v&agrave;o c&acirc;u query</p>
<pre>[code lang=csharp]
var names = dbContext.TableNameWithS.Where(x =&amp;amp;gt; (x.FirstName + x.LastName).Contains("test"));
[/code]</pre>
<p>Nhược điểm của c&aacute;ch n&agrave;y l&agrave; bạn đ&atilde; vi phạm nguy&ecirc;n tắc "DRY" - Don''t repeat yourself. Một biểu thức m&agrave; phải code tới 2 lần. Nếu sau n&agrave;y bạn thay đổi biểu thức đ&oacute; ở 1 chỗ, th&igrave; ở chỗ c&ograve;n lại bạn cũng sẽ phải đổi theo. Nếu bạn qu&ecirc;n -&gt; BUG ngay v&agrave; lu&ocirc;n</p>
<blockquote>
<p>The DRY principle is stated as "Every piece of knowledge must have a single, unambiguous, authoritative representation within a system"</p>
<p><em>Source: <a href="https://en.wikipedia.org/wiki/Don%27t_repeat_yourself">https://en.wikipedia.org/wiki/Don%27t_repeat_yourself</a></em></p>
</blockquote>
<h1>4. The best solution</h1>
<p><a href="https://github.com/hazzik/DelegateDecompiler">DelegateDecompiler</a> - Một bộ thư viện cực khủng gi&uacute;p bạn decompile biểu thức của computed property, v&agrave; translate ch&uacute;ng th&agrave;nh LINQ, EF sau đ&oacute; sẽ translate n&oacute; th&agrave;nh c&acirc;u lệnh SQL.</p>
<p>Nhược điểm của n&oacute; l&agrave; n&oacute; kh&ocirc;ng thể dịch được khi bạn sử dụng c&aacute;c method, class m&agrave; bạn tự định nghĩa, kh&ocirc;ng nằm trong .NET Framework</p>
<p>Sử dụng n&oacute; th&igrave; kh&ocirc;ng c&ograve;n g&igrave; dễ hơn</p>
<p>Bước 1: C&agrave;i đặt nuget DelegateDecompiler</p>
<pre>[code lang=bash]
Install-Package DelegateDecompiler
[/code]</pre>
<p>Bước 2: Trang tr&iacute; property với attribute <code>[Computed]</code></p>
<pre>[code lang=csharp]
public class TestViewModel
{
    [Required]
    [MaxLength(10, ErrorMessage = "Length must fewer than {1}")]
    public string FirstName { get; set; }

    [Required]
    [StringLength(10)]
    public string LastName { get; set; }

    // Computed Property
    [NotMapped]
    [Computed]
    public string FullName =&amp;amp;gt; FirstName + LastName;
}
[/code]</pre>
<p>Bước 3: Gọi method Decompile</p>
<pre>[code lang=csharp]
var names = dbContext.TableNameWithS.ToList().Where(x =&amp;amp;gt; x.FullName.Contains("test")).Decompile();
[/code]</pre>
<blockquote>
<p>Thư viện n&agrave;y thậm ch&iacute; c&ograve;n hỗ trợ async, c&aacute;c advanced functions của EF như <code>Include</code>, <code>AsNoTracking</code> với phần mở rộng <a href="https://nuget.org/packages/DelegateDecompiler.EntityFramework">DelegateDecompiler.EntityFramework</a></p>
</blockquote>
<h1>5. Make life easier</h1>
<p>Bạn cũng c&oacute; thể cấu h&igrave;nh cho asp tự xử l&yacute; c&aacute;c property c&oacute; [NotMapped]</p>
<p>Tạo một class Configuration</p>
<pre>[code lang=csharp]
public class DelegateDecompilerConfiguration : DefaultConfiguration
{
    public override bool ShouldDecompile(MemberInfo memberInfo)
    {
        // Automatically decompile all NotMapped members
        return base.ShouldDecompile(memberInfo) || memberInfo.GetCustomAttributes(typeof(NotMappedAttribute), true).Length &amp;amp;gt; 0;
    }
}
[/code]</pre>
<p>Rồi đăng k&yacute; n&oacute; trong method Startup như sau</p>
<p>&nbsp;</p>
<pre>[code lang=csharp]
DelegateDecompiler.Configuration.Configure(new DelegateDecompilerConfiguration());
[/code]</pre>', 1)
INSERT [dbo].[Posts] ([Id], [CreatedDateTime], [EditedDateTime], [PostedDateTime], [Title], [Summary], [Content], [IsPublished]) VALUES (13, CAST(N'2018-11-15T10:47:27.9574300' AS DateTime2), CAST(N'2018-11-16T08:26:23.1342598' AS DateTime2), CAST(N'2018-11-16T08:26:23.1342601' AS DateTime2), N'[ASP.NET] Custom Tag Helper', N'ASP.NET Core giới thiệu một cách vô cùng tự nhiên để xây dựng các thẻ input, label và một số thẻ khác với từ khóa asp-for, chúng được gọi là tag helper  Bạn cũng có thể tạo ra các tag helper của riêng mình để render ra các tag mong muốn', N'<p>ASP.NET Core giới thiệu một c&aacute;ch v&ocirc; c&ugrave;ng tự nhi&ecirc;n để x&acirc;y dựng c&aacute;c thẻ <code>input</code>, <code>label</code> v&agrave; một số thẻ kh&aacute;c với từ kh&oacute;a <code>asp-for</code>, ch&uacute;ng được gọi l&agrave; <em><code>tag helper</code></em></p>
<p>Bạn cũng c&oacute; thể tạo ra c&aacute;c <code>tag helper</code> của ri&ecirc;ng m&igrave;nh để render ra c&aacute;c tag mong muốn</p>
<p><!--more--></p>
<p><!-- TOC --></p>
<ul>
<li><a href="#một-số-tag-helper">Một số tag helper</a></li>
<li><a href="#vấn-đề-với-label-tag-helper">Vấn đề với label tag helper</a></li>
<li><a href="#customize-label-tag-helper">Customize Label tag helper</a>
<ul>
<li><a href="#code">Code</a></li>
<li><a href="#khai-b&aacute;o">Khai b&aacute;o</a></li>
</ul>
</li>
<li><a href="#sử-dụng">Sử dụng</a></li>
</ul>
<p><!-- /TOC --></p>
<h1>Một số tag helper</h1>
<table>
<thead>
<tr>
<th>ASP.NET MVC5</th>
<th>ASP.NET Core</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>@Html.TextBoxFor()</code></td>
<td>
<pre>[code] &amp;amp;lt;input asp-for=""/&amp;amp;gt; [/code]</pre>
</td>
</tr>
<tr>
<td><code>@Html.DropDownListFor()</code></td>
<td>
<pre>[code] &amp;amp;lt;select asp-for="" asp-items=""/&amp;amp;gt; [/code]</pre>
</td>
</tr>
<tr>
<td><code>@Html.LabelFor()</code></td>
<td>
<pre>[code] &amp;amp;lt;label asp-for=""&amp;amp;gt;&amp;amp;lt;/label&amp;amp;gt; [/code]</pre>
</td>
</tr>
<tr>
<td><code>@Html.ValidationMessageFor()</code></td>
<td>
<pre>[code] &amp;amp;lt;anytag asp-validation-for=""&amp;amp;gt;&amp;amp;lt;/anytag&amp;amp;gt; [/code]</pre>
</td>
</tr>
</tbody>
</table>
<h1>Vấn đề với label tag helper</h1>
<p><code>label</code> l&agrave; c&aacute;i tag m&agrave; bạn sẽ customize hơi nhiều trong ứng dụng asp.net core của m&igrave;nh. L&yacute; do l&agrave; v&igrave; bạn muốn n&oacute; c&oacute; th&ecirc;m một dấu <code>*</code> m&agrave;u đỏ đối với c&aacute;c input y&ecirc;u cầu bắt buộc, bạn cũng muốn n&oacute; c&oacute; th&ecirc;m <code>(500 k&yacute; tự)</code> khi &ocirc; input chỉ cho ph&eacute;p nhập 500 k&yacute; tự.</p>
<p>Tất nhi&ecirc;n, tất cả những c&aacute;i đ&oacute; đều c&oacute; thể th&ecirc;m v&agrave;o dễ d&agrave;ng bằng c&aacute;ch ... add tay</p>
<p>ASP.NET MVC, v&agrave; sau n&agrave;y l&agrave; ASP.NET CORE, cho ph&eacute;p bạn x&acirc;y dựng <code>model</code> với c&aacute;c <code>DataAnnotation</code> nhằm khai b&aacute;o cho cơ sở dữ liệu biết c&aacute;c giới hạn hoặc định nghĩa của một column tr&ecirc;n database, đồng thời gi&uacute;p bạn validate input field của n&oacute; ở client-side code</p>
<pre>[code lang=csharp]
[Required]
[Display(Name = "User name")]
[StringLenght(15)]
public string Username { get; set; }
[/code]</pre>
<p>Tuy nhi&ecirc;n, khi tạo input field cho property <code>username</code> n&agrave;y, bạn vẫn phải tự tạo tay c&aacute;c dấu <code>*</code> v&agrave; d&ograve;ng chữ <code>tối đa 15 k&yacute; tự</code> kia</p>
<pre>[code lang=html]
&amp;amp;lt;label asp-for="Username"&amp;amp;gt;&amp;amp;lt;/label&amp;amp;gt;
&amp;amp;lt;input asp-for="Username"/&amp;amp;gt;
&amp;amp;lt;span asp-validation-for="Username"&amp;amp;gt;&amp;amp;lt;/span&amp;amp;gt;
[/code]</pre>
<p>đoạn code tr&ecirc;n sẽ generate ra c&aacute;c d&ograve;ng html sau</p>
<pre>[code lang=html]
&amp;amp;lt;label for="Username"&amp;amp;gt;User name&amp;amp;lt;/label&amp;amp;gt;
....c&aacute;c d&ograve;ng kh&aacute;c...
[/code]</pre>
<h1>Customize Label tag helper</h1>
<p>Ch&uacute;ng ta sẽ tạo ra một custom tag helper với t&ecirc;n l&agrave; <code>requiredlabel</code></p>
<h2>Code</h2>
<pre>[code lang=csharp]
namespace YourNamespace.Extensions.TagHelpers
{
    using System;
    using System.IO;
    using System.Text.Encodings.Web;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.TagHelpers;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    using Microsoft.AspNetCore.Razor.TagHelpers;

    // Source code for label tag helper: Mvc/src/Microsoft.AspNetCore.Mvc.TagHelpers/LabelTagHelper.cs
    // https://github.com/aspnet/Mvc/blob/dev/src/Microsoft.AspNetCore.Mvc.TagHelpers/LabelTagHelper.cs

    [HtmlTargetElement("requiredlabel", Attributes = ForAttributeName)]
    public class RequiredLabelTagHelper : TagHelper
    {
        private const string ForAttributeName = "asp-for";

        // Will be used as highlight-class in html
        public string HighlightClass { get; set; }

        /// &amp;amp;lt;summary&amp;amp;gt;
        /// Creates a new &amp;amp;lt;see cref="LabelTagHelper"/&amp;amp;gt;.
        /// &amp;amp;lt;/summary&amp;amp;gt;
        /// &amp;amp;lt;param name="generator"&amp;amp;gt;The &amp;amp;lt;see cref="IHtmlGenerator"/&amp;amp;gt;.&amp;amp;lt;/param&amp;amp;gt;
        public RequiredLabelTagHelper(IHtmlGenerator generator)
        {
            Generator = generator;
        }

        /// &amp;amp;lt;inheritdoc /&amp;amp;gt;
        public override int Order =&amp;amp;gt; -1000;

        [HtmlAttributeNotBound]
        [ViewContext]
        public ViewContext ViewContext { get; set; }

        protected IHtmlGenerator Generator { get; }

        /// &amp;amp;lt;summary&amp;amp;gt;
        /// An expression to be evaluated against the current model.
        /// &amp;amp;lt;/summary&amp;amp;gt;
        [HtmlAttributeName(ForAttributeName)]
        public ModelExpression For { get; set; }

        /// &amp;amp;lt;inheritdoc /&amp;amp;gt;
        /// &amp;amp;lt;remarks&amp;amp;gt;Does nothing if &amp;amp;lt;see cref="For"/&amp;amp;gt; is &amp;amp;lt;c&amp;amp;gt;null&amp;amp;lt;/c&amp;amp;gt;.&amp;amp;lt;/remarks&amp;amp;gt;
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            if (context == null)
            {
                throw new ArgumentNullException(nameof(context));
            }

            if (output == null)
            {
                throw new ArgumentNullException(nameof(output));
            }

            var requiredMarkTagBuilder = new TagBuilder("span");
            requiredMarkTagBuilder.AddCssClass(HighlightClass);
            requiredMarkTagBuilder.InnerHtml.Append(" *");

            var tagBuilder = Generator.GenerateLabel(
                ViewContext,
                For.ModelExplorer,
                For.Name,
                labelText: null,
                htmlAttributes: null);

            if (For.ModelExplorer.Metadata.IsRequired)
            {
                using (var writer = new StringWriter())
                {
                    requiredMarkTagBuilder.WriteTo(writer, HtmlEncoder.Default);
                    tagBuilder.InnerHtml.AppendHtml(writer.ToString());
                }
            }

            output.TagName = tagBuilder.TagName;
            output.MergeAttributes(tagBuilder);
            output.Content.SetHtmlContent(tagBuilder.InnerHtml);
        }
    }
}
[/code]</pre>
<h2>Khai b&aacute;o</h2>
<p>Mở <code>View/_ViewImports.cshtml</code></p>
<pre>[code lang=csharp]
@addTagHelper *, Microsoft.AspNetCore.Mvc.TagHelpers

@* Th&ecirc;m d&ograve;ng sau *@
@addTagHelper *, YourNamespace.Extensions
[/code]</pre>
<blockquote>
<p>Đoạn code n&agrave;y gi&uacute;p tag helper của bạn c&oacute; thể hoạt động trong c&aacute;c view razor. Với t&ecirc;n namespace kh&aacute;c, bạn cần phải thay đổi đoạn code đ&oacute; tương ứng</p>
<p>Xem th&ecirc;m tại: <a href="https://docs.microsoft.com/en-us/aspnet/core/mvc/views/tag-helpers/intro">https://docs.microsoft.com/en-us/aspnet/core/mvc/views/tag-helpers/intro</a> mục <em>Managing Tag Helper scope</em></p>
</blockquote>
<h1>Sử dụng</h1>
<p>V&ocirc; c&ugrave;ng đơn giản</p>
<pre>[code lang=html]
&amp;amp;lt;requiredlabel asp-for="Username" highlight-class="red bold"&amp;amp;gt;&amp;amp;lt;/requiredlabel&amp;amp;gt;
[/code]</pre>
<p>sẽ render ra đoạn code html sau</p>
<p>&nbsp;</p>
<pre>[code lang=html]
&amp;amp;lt;label for="Username"&amp;amp;gt;User name&amp;amp;lt;span class="red bold"&amp;amp;gt; *&amp;amp;lt;/span&amp;amp;gt;&amp;amp;lt;/label&amp;amp;gt;
[/code]</pre>', 1)
INSERT [dbo].[Posts] ([Id], [CreatedDateTime], [EditedDateTime], [PostedDateTime], [Title], [Summary], [Content], [IsPublished]) VALUES (14, CAST(N'2018-11-15T10:53:06.8355413' AS DateTime2), CAST(N'2018-11-16T08:26:28.5502996' AS DateTime2), CAST(N'2018-11-16T08:26:28.5502999' AS DateTime2), N'[ASP.NET] Error Message - chung mà riêng', N'Bạn có đang dùng Entity Framework với ASP.NET MVC, cùng với đó là client-validation?

Đối với mỗi ```DataAnnotation`` attribute, bạn lại có 1 câu thông báo lỗi khác nhau, và bạn nhét tất cả chúng vào Resource?

Có một số cách giúp bạn khắc phục một vài nhược điểm trên ;)', N'<p>Bạn c&oacute; đang d&ugrave;ng Entity Framework với ASP.NET MVC, c&ugrave;ng với đ&oacute; l&agrave; client-validation?</p>
<p>Đối với mỗi ```DataAnnotation`` attribute, bạn lại c&oacute; 1 c&acirc;u th&ocirc;ng b&aacute;o lỗi kh&aacute;c nhau, v&agrave; bạn nh&eacute;t tất cả ch&uacute;ng v&agrave;o Resource?</p>
<p>C&oacute; một số c&aacute;ch gi&uacute;p bạn khắc phục một v&agrave;i nhược điểm tr&ecirc;n ;)</p>
<p><!--more--></p>
<p><!-- TOC --></p>
<ul>
<li><a href="#1-generic-customized-error-message">1. Generic Customized Error Message</a></li>
<li><a href="#2-error-message-localization">2. Error Message Localization</a>
<ul>
<li><a href="#21-nếu-bạn-c&oacute;-resharper">2.1. Nếu bạn c&oacute; Resharper</a></li>
<li><a href="#22-nếu-bạn-muốn-d&ugrave;ng-h&agrave;ng-miễn-ph&iacute;">2.2. Nếu bạn muốn d&ugrave;ng h&agrave;ng miễn ph&iacute;</a></li>
</ul>
</li>
</ul>
<p><!-- /TOC --></p>
<h1>1. Generic Customized Error Message</h1>
<p>Generic tức l&agrave; chung chung. D&ugrave;ng chung 1 c&acirc;u th&ocirc;ng b&aacute;o cho nhiều property c&ugrave;ng loại, chỉ thay đổi c&aacute;c yếu tố cần thiết</p>
<pre>[code lang=text]
V&iacute; dụ:
 * T&ecirc;n phải chứa &iacute;t hơn 15 k&yacute; tự
 * Địa chỉ phải chứa &iacute;t hơn 150 k&yacute; tự
[/code]</pre>
<p>Trong v&iacute; dụ tr&ecirc;n, phần <code>t&ecirc;n</code>, <code>địa chỉ</code>, <code>15</code>, <code>150</code> l&agrave; những tham số ta phải thay đổi cho c&acirc;u th&ocirc;ng b&aacute;o. Vậy l&agrave;m bằng c&aacute;ch n&agrave;o?</p>
<p>M&ograve; v&agrave;o source code của từng loại DataAnnotation, ch&uacute;ng ta sẽ thấy 1 số điều th&uacute; vị</p>
<blockquote>
<p>Source code cho DataAnnotation<br /><a href="https://github.com/Microsoft/referencesource/tree/master/System.ComponentModel.DataAnnotations/DataAnnotations">https://github.com/Microsoft/referencesource/tree/master/System.ComponentModel.DataAnnotations/DataAnnotations</a></p>
</blockquote>
<p>Tất cả c&aacute;c Attribute đều override lại method FormatErrorMessage. M&ograve; v&agrave;o từng implementation của c&aacute;c attribute, ta sẽ biết thứ tự c&aacute;c biến tham số của error message.</p>
<table>
<thead>
<tr>
<th>Attribute</th>
<th>Source code</th>
<th>Giải th&iacute;ch</th>
</tr>
</thead>
<tbody>
<tr>
<td>StringLength</td>
<td><code>return String.Format(CultureInfo.CurrentCulture, errorMessage, name, this.MaximumLength, this.MinimumLength);</code></td>
<td>{0} = name, {1} = MaximumLength, {2} = MinimumLength</td>
</tr>
<tr>
<td>Compare</td>
<td><code>return String.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, OtherPropertyDisplayName ?? OtherProperty);</code></td>
<td>{0} = name, {1} = OtherPropertyDisplayName / OtherProperty</td>
</tr>
<tr>
<td>MinLength</td>
<td><code>return string.Format(CultureInfo.CurrentCulture, ErrorMessageString, name, Length);</code></td>
<td>{0} = name, {1} = Length</td>
</tr>
</tbody>
</table>
<p>Như vậy, thay v&igrave; ta phải viết thẳng từng c&acirc;u error message, ta chỉ cần d&ugrave;ng string.Format với thứ tự ch&iacute;nh x&aacute;c của c&aacute;c tham số</p>
<p>V&iacute; dụ với trường hợp StringLength</p>
<pre>[code lang=csharp]
[StringLength(70, ErrorMessage = "{0} phải chứa &iacute;t hơn {1} k&yacute; tự")]
public string Name { get; set; }
[/code]</pre>
<h1>2. Error Message Localization</h1>
<p>Thực ra th&igrave; chi&ecirc;u sau đ&acirc;y kh&ocirc;ng những gi&uacute;p bạn localize string của Error Message, m&agrave; bất kỳ đoạn string n&agrave;o bạn muốn</p>
<blockquote>
<p>Bạn phải tạo một file Resource trong project (.resx) để sử dụng</p>
<p>Th&ocirc;ng tin th&ecirc;m ở đ&acirc;y: <a href="https://docs.microsoft.com/en-us/aspnet/core/fundamentals/localization">https://docs.microsoft.com/en-us/aspnet/core/fundamentals/localization</a></p>
</blockquote>
<h2>2.1. Nếu bạn c&oacute; Resharper</h2>
<p>Resharper l&agrave; một sản phẩm hỗ trợ dev kha kh&aacute; của JetBrains</p>
<p>Đặt con trỏ tại một string bất kỳ -&gt; Resharper -&gt; Refactor -&gt; Move...</p>
<p><img src="https://farm5.staticflickr.com/4750/39647359142_98791bd35d_o.png" alt="resharper move to resource" /></p>
<p>Resharper t&iacute;nh ph&iacute; bản quyền</p>
<h2>2.2. Nếu bạn muốn d&ugrave;ng h&agrave;ng miễn ph&iacute;</h2>
<p>Visual Studio c&oacute; một extension rất hay l&agrave; <a href="https://github.com/tom-englert/ResXResourceManager">RestXManager</a>. Chức năng của n&oacute; th&igrave; tương tự như Resharper, thậm ch&iacute; c&ograve;n nhỉnh hơn một t&iacute;</p>
<blockquote>
<ul>
<li style="list-style-type: none;">
<ul>
<li>Open source</li>
<li>Active Development</li>
<li>Hỗ trợ dịch text</li>
</ul>
</li>
</ul>
<p>&nbsp;</p>
</blockquote>
<p>Bạn c&oacute; thể t&igrave;m v&agrave; tải trực tiếp trong Visual Studio: <code>Tools &amp;gt; Extensions and Updates &amp;gt; Online &amp;gt; search "ResXManager"</code></p>
<p><img src="https://farm5.staticflickr.com/4616/38972346614_45410a6157_o.png" alt="ResXManager" /></p>
<p>hoặc</p>
<p>tại link sau: <a href="https://marketplace.visualstudio.com/items?itemName=TomEnglert.ResXManager">https://marketplace.visualstudio.com/items?itemName=TomEnglert.ResXManager</a></p>
<p>Sau đ&oacute;, tương tự như Resharper, đặt con trỏ tại một string bất kỳ &gt; Chuột phải &gt; Move to Resource</p>
<p><img src="https://farm5.staticflickr.com/4704/38783776745_f94606e40c_o.png" alt="Move to Resource" /></p>
<p>&nbsp;</p>
<p>C&ograve;n một số chi&ecirc;u kh&aacute;c với những loại DataAnnotation kh&aacute;c nữa bạn nh&eacute;</p>', 1)
INSERT [dbo].[Posts] ([Id], [CreatedDateTime], [EditedDateTime], [PostedDateTime], [Title], [Summary], [Content], [IsPublished]) VALUES (15, CAST(N'2018-11-15T10:54:25.8640803' AS DateTime2), CAST(N'2018-11-16T08:26:48.8104935' AS DateTime2), CAST(N'2018-11-16T08:26:48.8104935' AS DateTime2), N'[AZURE] Virtual Machine in Azure Part 1: Create virtual machine and connect to it', N'Chào các bạn, vậy là azure đã cho đăng ký chính thức ở Việt Nam.

Và 1 dịch vụ rất hay của Azure đó là máy ảo. Bạn được phép tạo một cái máy ảo như máy thật, chạy Windows Server 2012 hoặc 2014, thậm chí là tạo một cái máy ảo chạy thử Windows 10 Technical Preview cũng vẫn được.', N'<p>Ch&agrave;o c&aacute;c bạn, vậy l&agrave; azure đ&atilde; cho đăng k&yacute; ch&iacute;nh thức ở Việt Nam.</p>
<p>V&agrave; 1 dịch vụ rất hay của Azure đ&oacute; l&agrave; m&aacute;y ảo. Bạn được ph&eacute;p tạo một c&aacute;i m&aacute;y ảo như m&aacute;y thật, chạy Windows Server 2012 hoặc 2014, thậm ch&iacute; l&agrave; tạo một c&aacute;i m&aacute;y ảo chạy thử Windows 10 Technical Preview cũng vẫn được.</p>
<p><!--more--></p>
<h1>Tạo m&aacute;y ảo</h1>
<p>Đăng nhập v&agrave;o portal của azure, tạo Storage Account. Bước n&agrave;y c&oacute; thể l&agrave;m tự động, nhưng tạo tay sẽ cho ph&eacute;p bạn đặt cho n&oacute; một c&aacute;i t&ecirc;n &yacute; nghĩa: <a title="https://manage.windowsazure.com" href="https://manage.windowsazure.com" target="_blank" rel="noopener">https://manage.windowsazure.com</a></p>
<p>Tiếp theo, tạo một Virtual Machine từ Gallery</p>
<p><img class="aligncenter" src="https://farm8.staticflickr.com/7490/15316844594_6ea298d7d3_o.png" alt="" width="853" height="422" /></p>
<p>Ở đ&acirc;y, bạn c&oacute; thể chọn từ rất nhiều Image, c&oacute; cả c&aacute;c image c&oacute; sẵn Visual Studio 2013, v&agrave; c&oacute; cả Windows 10 Enterprise Technical Preview</p>
<p><img class=" aligncenter" src="https://farm8.staticflickr.com/7555/15938450692_9b8b964e62_o.png" alt="" width="704" height="648" /></p>
<p>Đặt một c&aacute;i t&ecirc;n mang t&iacute;nh gợi nhớ cho bạn. V&iacute; dụ như Windows81VM hay g&igrave; đ&oacute; đại loại vậy</p>
<p>Chọn cấu h&igrave;nh cho m&aacute;y bạn. Nếu bạn chọn những Image c&oacute; c&agrave;i sẵn nhiều thứ, th&igrave; n&ecirc;n chọn cấu h&igrave;nh cao cao một ch&uacute;t. Lưu &yacute; l&agrave; cấu h&igrave;nh c&agrave;ng cao th&igrave; c&agrave;ng tốn tiền</p>
<p>Tạo username v&agrave; password cho bạn. Phải nhớ username v&agrave; password n&agrave;y</p>
<p><img class=" aligncenter" src="https://farm8.staticflickr.com/7487/15938466492_dfc0b4d6f0_o.png" alt="" width="481" height="592" /></p>
<p>Availability tức l&agrave; VM của bạn sẽ được backup ở một số nơi kh&aacute;c ngo&agrave;i nơi bạn tạo ch&iacute;nh. Tất nhi&ecirc;n l&agrave; sẽ tốn ph&iacute;</p>
<p><img class=" aligncenter" src="https://farm8.staticflickr.com/7554/15751845320_971cdc5574_o.png" alt="" width="770" height="700" /></p>
<p>Xong hết rồi th&igrave; bấm Create. Chờ n&oacute; ph&acirc;n v&ugrave;ng, tạo m&aacute;y ảo, đăng k&yacute;, khởi động, blah blah blah rất l&agrave; l&acirc;u.</p>
<h1>Đăng nhập</h1>
<p>Tạo xong th&igrave; phải đăng nhập. V&agrave; bạn sẽ đăng nhập bằng Remote Desktop của Windows</p>
<p>Sau khi m&aacute;y ảo đ&atilde; khởi động xong, bạn nhấn v&agrave;o n&uacute;t connect để tải về một file .RDP. N&uacute;t connect chỉ xuất hiện ở dashboard của Virtual Machine m&agrave; bạn tạo</p>
<p><img class=" aligncenter" src="https://farm9.staticflickr.com/8668/15319517683_95abc6ee6a_o.png" alt="" width="747" height="68" /></p>
<p>Double click file n&agrave;y để chạy, bạn sẽ thấy một khung đăng nhập. B&acirc;y giờ tới phần &eacute;o le</p>
<p>Select &ldquo;Other Account&rdquo;. Ở &ocirc; username, bạn nhập theo c&uacute; ph&aacute;p &ldquo;hostname\username&rdquo;. Hostname lấy trong phần dashboard của virtual machine trong Azure. Password bạn nhập đ&uacute;ng password l&uacute;c tạo m&aacute;y ảo</p>
<p><img class=" aligncenter" src="https://farm9.staticflickr.com/8646/15938501022_5b036859a4_o.png" alt="" width="503" height="440" /></p>
<p>&nbsp;</p>
<p>Bạn sẽ gặp phải một v&agrave;i cảnh b&aacute;o về chứng chỉ. Cứ việc cho ph&eacute;p n&oacute;. Đến b&acirc;y giờ bạn đ&atilde; c&oacute; thể đăng nhập v&agrave;o m&aacute;y ảo.</p>', 1)
INSERT [dbo].[Posts] ([Id], [CreatedDateTime], [EditedDateTime], [PostedDateTime], [Title], [Summary], [Content], [IsPublished]) VALUES (16, CAST(N'2018-11-15T10:55:40.7800492' AS DateTime2), CAST(N'2018-11-16T08:26:52.4615508' AS DateTime2), CAST(N'2018-11-16T08:26:52.4615514' AS DateTime2), N'[AZURE] Virtual Machine in Azure Part 2: Configure to login with Microsoft Account &amp; make it FTP Server', N'Chào các bạn, ở phần trước, các bạn đã biết cách tạo một Virtual Machine trên Azure. Phần này mình sẽ hướng dẫn cho các bạn cách thiết lập nó để đăng nhập bằng chính Microsoft Account của bạn, và biến nó thành một máy chủ FTP nhé.', N'<p>Ch&agrave;o c&aacute;c bạn, ở phần trước, c&aacute;c bạn đ&atilde; biết c&aacute;ch tạo một Virtual Machine tr&ecirc;n Azure. Phần n&agrave;y m&igrave;nh sẽ hướng dẫn cho c&aacute;c bạn c&aacute;ch thiết lập n&oacute; để đăng nhập bằng ch&iacute;nh Microsoft Account của bạn, v&agrave; biến n&oacute; th&agrave;nh một m&aacute;y chủ FTP nh&eacute;.</p>
<p><!--more--></p>
<h1>Login with MS Account</h1>
<p>Tạo một user mới, d&ugrave;ng Microsoft Account l&agrave;m username (v&iacute; dụ như <a href="mailto:blahblahblah@hotmail.com">blahblahblah@hotmail.com</a> chả hạn)</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7480/16133514591_b1627eeae8_o.png" alt="" width="593" height="559" /></p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7553/16135418725_c4193f946f_o.png" alt="" width="1033" height="411" /></p>
<p>Sau khi tạo xong, mở Computer Management, chọn mục Local Users and Groups trong System Tools. User mới tạo sẽ xuất hiện trong mục n&agrave;y với một c&aacute;i t&ecirc;n bị cắt ngắn.</p>
<p>Bạn mở Property của User n&agrave;y l&ecirc;n, chuyển sang thẻ Member of, th&ecirc;m người n&agrave;y v&agrave;o nh&oacute;m Remote Desktop Users.</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7473/16134669652_56a4064c9b_o.png" alt="" width="474" height="529" /></p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7494/16109629516_1bbd681b2b_o.png" alt="" width="540" height="296" /></p>
<p>Trong Control Panel, mở System and Security, chọt Allow Remote Access, bỏ chọn t&ugrave;y chọn &ldquo;Allow connections only &hellip; with Network Level Authentication&rdquo;.</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7550/16134669472_0ca0f6cf48_o.png" alt="" width="428" height="480" /></p>
<p>Bước cuối c&ugrave;ng l&agrave; mở file .RDP l&ecirc;n bằng notepad, thay đổi d&ograve;ng &ldquo;<strong>prompt for credentials:i:1</strong>&rdquo; th&agrave;nh &ldquo;<strong>enablecredsspsupport:i:0</strong>&rdquo;</p>
<p>Vậy l&agrave; xong. Sau khi đăng nhập lần đầu ti&ecirc;n, bạn c&oacute; thể undo 2 bước cuối c&ugrave;ng.</p>
<h1>FTP Server</h1>
<h2>C&agrave;i đặt tr&ecirc;n Azure Portal</h2>
<p>Bước đầu ti&ecirc;n, bạn phải tạo một port 21 trong phần quản l&yacute; của Azure</p>
<p>Click chọn Add trong phần Endpoint của Virtual Machine của bạn</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7555/15949429589_b3ec1b188f_o.png" alt="" width="703" height="321" /></p>
<p>Chọn Add a stand alone endpoint v&agrave; nhấn next</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7544/16133612571_e8534a1023_o.png" alt="" width="470" height="223" /></p>
<p>Chọn FTP, c&aacute;c th&ocirc;ng số sẽ tự điền v&ocirc; cho bạn (:yay:)</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7520/15949443029_fc25fc17d1_o.png" alt="" width="470" height="456" /></p>
<p>Chờ n&oacute; ho&agrave;n tất</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7568/15949450879_d152283f57_o.png" alt="" width="433" height="84" /></p>
<h2>C&agrave;i đặt tr&ecirc;n Virtual Machine</h2>
<h3>C&agrave;i FileZilla Server</h3>
<p>Tr&ecirc;n VM, bạn tải FileZilla Server về: <a href="https://filezilla-project.org/download.php?type=server">https://filezilla-project.org/download.php?type=server</a></p>
<p>Khi c&agrave;i đặt, chấp nhận tất cả c&aacute;c t&ugrave;y chọn mặc định của n&oacute;</p>
<p>Mở FileZilla Server l&ecirc;n, chọn Edit &gt; Users</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7558/15948351778_1d23368c73_o.png" alt="" width="282" height="172" /></p>
<p>Th&ecirc;m một User mới với t&ecirc;n t&ugrave;y chọn. Đ&acirc;y l&agrave; t&ecirc;n bạn sẽ d&ugrave;ng để đăng nhập v&agrave;o FTP Server của m&igrave;nh sau n&agrave;y</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7509/15948353428_0c2804bfc0_o.png" alt="" width="174" height="244" /> <img class="alignnone" src="https://farm9.staticflickr.com/8655/16110010396_2ff5e90b5b_o.png" alt="" width="295" height="205" /></p>
<p>Th&ecirc;m password cho t&agrave;i khoản n&agrave;y. Nếu kh&ocirc;ng th&igrave; Man-in-the-middle sẽ truy cập được v&agrave; server của bạn v&agrave; tiến h&agrave;nh ph&aacute; hoại</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7547/16135806475_92b2f1c975_o.png" alt="" width="661" height="445" /></p>
<p>Tiếp theo, chọn Shared Folders v&agrave; th&ecirc;m v&agrave;o Folder m&agrave; bạn sẽ kết nối để download hoặc upload dữ liệu</p>
<p><img class="alignnone" src="https://farm9.staticflickr.com/8579/16134067331_1317d1baa7_o.png" alt="" width="321" height="244" /></p>
<p>Lưu &yacute; rằng c&oacute; c&aacute;c t&ugrave;y chọn cho ph&eacute;p c&aacute;c quyền kh&aacute;c nhau đối với folder, v&agrave; c&aacute;c quyền n&agrave;y đi theo t&agrave;i khoản m&agrave; bạn đ&atilde; tạo v&agrave; đ&atilde; chọn trong FileZilla Server</p>
<p>Lưu &yacute; 2: Kh&ocirc;ng được chọn Folder gốc (C:/ D:/ E:/), lu&ocirc;n lu&ocirc;n chọn Folder dưới mức gốc 1 level</p>
<p>Tiếp tục, mở FileZilla Server Settings, chọn Passive Mode</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7553/16110037406_9a3392ff54_o.png" alt="" width="607" height="419" /></p>
<p>Chọn "Use custom Port Range, v&agrave; điền một số port cho cả 2 b&ecirc;n (v&igrave; bạn sẽ ko muốn tạo ra cả trăm port tr&ecirc;n Azure Portal đ&acirc;u)</p>
<p>Tiếp tục chọn Retrieve external IP Address from</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7529/16110190066_890fb9766c_o.png" alt="" width="607" height="419" /></p>
<h3>Thiếp lập Firewall</h3>
<p>Mở Windows Firewall l&ecirc;n v&agrave; cho ph&eacute;p FileZilla Server</p>
<p>Chọn Allow an app through Windows Filewall</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7517/15950078947_c6588c56ac_o.png" alt="" width="259" height="288" /></p>
<p>Nếu bạn kh&ocirc;ng t&igrave;m thấy FileZilla Server trong danh s&aacute;ch, th&igrave; duyệt tới file thực thi .exe của n&oacute;</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7495/16135094662_38e4a8b7ab_o.png" alt="" width="336" height="163" /></p>
<p>Sau c&ugrave;ng n&oacute; phải giống như vầy</p>
<p><img class="alignnone" src="https://farm9.staticflickr.com/8675/15516120053_03bd077f97_o.png" alt="" width="560" height="248" /></p>
<p>Tiếp theo, ở Control Panel &gt; Windows Firewall, chọn Advanced Settings</p>
<p><img class="alignnone" src="https://farm9.staticflickr.com/8644/16133948991_6f9fb96a8d_o.png" alt="" width="200" height="295" /></p>
<p>Chọn Inbound Rules, v&agrave; th&ecirc;m c&aacute;i custom Port của bạn hồi n&atilde;y mới thiếp lập trong FileZilla Server</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7570/15513526614_76337d6844_o.png" alt="" width="224" height="235" /> <img class="alignnone" src="https://farm9.staticflickr.com/8638/16110072306_90f3ffacf3_o.png" alt="" width="252" height="279" /> <img class="alignnone" src="https://farm8.staticflickr.com/7462/16135112792_25b507d9d3_o.png" alt="" width="523" height="387" /></p>
<p>Thiết lập cổng cho c&aacute;i Inbound Rule n&agrave;y</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7485/15513532304_2608708f49_o.png" alt="" width="543" height="328" /></p>
<h2>&nbsp;C&agrave;i đặt tr&ecirc;n Local Machine</h2>
<h3>C&agrave;i đặt FileZilla Client</h3>
<p>Tải FileZilla Client tại: <a href="https://filezilla-project.org/download.php?type=client">https://filezilla-project.org/download.php?type=client</a></p>
<p>Khi khởi chạy, điền dải IP trong Public IP tr&ecirc;n Azure của bạn</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7569/16135891365_c631a0fc94_o.png" alt="" width="252" height="222" /></p>
<p>Điền c&aacute;c th&ocirc;ng tin v&agrave;o c&aacute;c &ocirc; tương ứng v&agrave; nhấn quick connect</p>
<p><img class="alignnone" src="https://farm9.staticflickr.com/8657/16134040481_9840ea9497_o.png" alt="" width="734" height="34" /></p>
<p>Danh s&aacute;ch c&aacute;c Folder bạn đ&atilde; Share sẽ hiện ra :3</p>
<p><img class="alignnone" src="https://farm9.staticflickr.com/8667/15949873649_5254d44ec9_o.png" alt="" width="843" height="379" /></p>
<h2>Thử nghiệm tốc độ của FTP Server mới tạo</h2>
<p>Tốc độ mạng của Azure</p>
<p><img class="alignnone" src="http://www.speedtest.net/result/4018401482.png" alt="" width="300" height="135" /></p>
<p>Download</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7556/15948706180_d594463823_o.png" alt="" width="650" height="104" /></p>
<p>Mạng c&ocirc;ng ty bị QoS chặn download tốc độ cao file lớn (haiza)</p>
<p>Upload</p>
<p><img class="alignnone" src="https://farm8.staticflickr.com/7470/15949950969_fbd629132e_o.png" alt="" width="646" height="104" /></p>
<p>&nbsp;</p>
<p>Mạng c&ocirc;ng ty bị QoS chặn upload tốc độ cao file lớn (haiza)</p>', 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
/****** Object:  Index [AK_PostCategory_CategoryId_PostId]    Script Date: 11/16/2018 4:19:32 PM ******/
ALTER TABLE [dbo].[PostCategory] ADD  CONSTRAINT [AK_PostCategory_CategoryId_PostId] UNIQUE NONCLUSTERED 
(
	[CategoryId] ASC,
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Posts] ADD  DEFAULT ((0)) FOR [IsPublished]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PostCategory]  WITH CHECK ADD  CONSTRAINT [FK_PostCategory_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostCategory] CHECK CONSTRAINT [FK_PostCategory_Categories_CategoryId]
GO
ALTER TABLE [dbo].[PostCategory]  WITH CHECK ADD  CONSTRAINT [FK_PostCategory_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostCategory] CHECK CONSTRAINT [FK_PostCategory_Posts_PostId]
GO
