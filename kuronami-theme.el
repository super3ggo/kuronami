;;; kuronami-theme.el --- A deep blue theme with cool autumnal colors -*- lexical-binding: t; -*-

;; Author: inj0h <>
;; Version: 2.0
;; Filename: kuronami-theme.el
;; Package-Requires: ((emacs "24.1"))
;; URL: https://github.com/inj0h/kuronami
;; License: GPL-3+
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:

;; An Emacs theme with cool autumnal colors against a deep blue background.
;; Inspired by other Emacs themes - Deeper Blue shipped with most modern
;; versions of GNU Emacs, Gruber Darker by Alexey Kutepov, and Naysayer by
;; Nick Aversano. The character designs of Ayanami Rei and
;; Ayanami Rei (Tentative Name) from the anime Neon Genesis Evangelion by
;; Studio Khara/Gainax provided the main source of inspiration regarding the
;; central ideas behind the colors used in this theme.
;;
;; This theme advocates the oxymoronic minimalist Emacs user. Popular third
;; party packages most likely do not have overwritten colors. Further, many
;; default Faces that Inherit other default Faces do not get overwritten.
;; Generally, only Faces that do not use Inherit have themed coloring though
;; exceptions exist.
;;
;; A total of fifteen colors make up this theme. Seven of them originate from
;; other Emacs themes or various Internet samples using color identifying
;; software. The remaining colors then derive from these seven. The website
;; https://www.color-hex.com provided much needed assistance in selecting these
;; derived colors according to the Analogous, Complementary, Triadic, Tint, and
;; Shade properties provided there. This theme's color declarations contain
;; in-line comments, attempting to explain the respective derivation process in
;; addition to crediting sources accordingly.
;;
;; Kuronami colors with the same name generally have a dark-less-intense to a
;; light-more-intense arrangement such that the former gets a lower number and
;; the latter, a higher number. For example, "kuronami-blue0" has a darker, less
;; intense blue than "kuronami-blue1," which has a lighter, more intense blue.
;;
;; The author has historically struggled seeing and describing colors as most
;; others do, so please have patience if these descriptions do not make sense.

;;; Code:

(deftheme kuronami
  "Cool autumnal colors against a deep blue background.")

(let ((kuronami-black0  "#181a26")  ; Emacs default theme Deeper Blue
      (kuronami-black1  "#232328")  ; black2 -> 5 shades darker
      (kuronami-black2  "#464751")  ; black0 -> 2 tints lighter

      ;; TODO() Refactor to blue0
      (kuronami-blue3   "#5882a3")  ; Ayanami Blue -> 3 shades darker

      (kuronami-blue0   "#2e41ac")  ; Random image of blue Unit-00
      (kuronami-blue1   "#7fbbe9")  ; Official Ayanami Blue!
      (kuronami-blue2   "#8ca5c6")  ; yellow0 -> complementary #708fb8 -> 2 tints lighter
      (kuronami-gray0   "#a7a7a7")  ; Emacs default "gray65/grey65/#a6a6a6" but a hair lighter
      (kuronami-green0  "#668b8b")  ; Emacs default "pale turquoise 4"
      (kuronami-green1  "#65bab4")  ; blue1 -> analogous #7fe9e2 -> 2 shades darker
      (kuronami-green2  "#bbe97f")  ; blue1 -> triadic
      (kuronami-red0    "#e97f86")  ; blue1 -> triadic #e97fbb -> analogous
      (kuronami-white0  "#fffafa")  ; Emacs default "snow"
      (kuronami-yellow0 "#b89970")) ; Based on some Emacs default burlywood3 / #cdaa7d but a shade darker

  (custom-theme-set-faces
   `kuronami

   ;;; Vanilla:

   ;; UI:
   `(cursor              ((t (:background ,kuronami-red0))))
   `(default             ((t (:background ,kuronami-black0 :foreground ,kuronami-blue3))))
   `(error               ((t (:foreground ,kuronami-red0 :weight bold))))
   `(fringe              ((t (:background ,kuronami-black0))))
   `(highlight           ((t (:background ,kuronami-green1))))
   `(isearch             ((t (:background ,kuronami-red0 :foreground ,kuronami-black0))))
   `(lazy-highlight      ((t (:background ,kuronami-green0))))
   `(line-number         ((t (:inherit default :foreground ,kuronami-blue2))))
   `(link                ((t (:foreground ,kuronami-blue1 :italic t :underline t))))
   `(link-visited        ((t (:foreground ,kuronami-blue3 :italic t :underline t))))
   `(match               ((t (:inherit lazy-highlight))))
   `(minibuffer-prompt   ((t (:foreground ,kuronami-white0))))
   `(region              ((t (:extend nil :background ,kuronami-blue0)))) ; Like Vim!
   `(show-paren-match    ((t (:background ,kuronami-blue2))))
   `(show-paren-mismatch ((t (:background ,kuronami-red0))))
   `(success             ((t (:foreground ,kuronami-green2 :weight bold))))
   `(warning             ((t (:foreground ,kuronami-yellow0 :weight bold))))

   `(font-lock-builtin-face           ((t (:inherit default))))
   `(font-lock-comment-face           ((t (:foreground ,kuronami-blue1 :italic t))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face          ((t (:inherit default))))
   `(font-lock-doc-face               ((t (:foreground ,kuronami-green1))))
   `(font-lock-function-name-face     ((t (:inherit default))))
   `(font-lock-keyword-face           ((t (:inherit font-lock-builtin-face))))
   `(font-lock-negation-char-face     ((t (:foreground ,kuronami-red0))))
   `(font-lock-preprocessor-face      ((t (:inherit font-lock-builtin-face))))
   `(font-lock-string-face            ((t (:foreground ,kuronami-green1))))
   `(font-lock-type-face              ((t (:inherit font-lock-builtin-face))))
   `(font-lock-variable-name-face     ((t (:inherit default))))
   `(font-lock-warning-face           ((t (:foreground ,kuronami-red0 :bold t :italic t))))

   ;; Listed alphabetically from this point.

   `(compilation-column-number  ((t (:foreground ,kuronami-white0))))
   `(compilation-line-number    ((t (:foreground ,kuronami-blue2))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error))))

   `(completions-common-part      ((t (:foreground ,kuronami-white0))))
   `(completions-first-difference ((t (:foreground ,kuronami-yellow0 :bold t))))

   ;; TODO() Update this value to just use the color directly
   `(dired-directory ((t (:foreground ,kuronami-blue2))))
   `(dired-symlink   ((t (:foreground ,kuronami-blue1))))

   `(flyspell-duplicate ((t nil))) ; Setting "flyspell-duplicate-distance" does not work for Emacs 27.2 on macOS x86 so disable the Face.
   `(flyspell-incorrect ((t (:underline (:color ,kuronami-red0 :style wave)))))

   `(ido-first-match ((t (:foreground ,kuronami-yellow0 :italic t))))
   `(ido-only-match  ((t (:foreground ,kuronami-green2 :bold t :italic t))))
   `(ido-subdir      ((t (:foreground ,kuronami-white0))))

   `(mode-line           ((t (:background ,kuronami-gray0 :foreground ,kuronami-black1)))) ; Just colors. No "boxing" effect.
   `(mode-line-buffer-id ((t nil)))
   `(mode-line-emphasis  ((t nil)))
   `(mode-line-inactive  ((t (:background ,kuronami-black2 :foreground ,kuronami-gray0))))

   ;; This theme assumes the user has whitespace-style configured for the
   ;; following Faces:
   ;;
   ;; - empty
   ;; - face
   ;; - lines
   ;; - indentation
   ;; - missing-newline-at-eof
   ;; - newline
   ;; - space-after-tab
   ;; - space-before-tab
   ;; - space-mark
   ;; - spaces
   ;; - tab-mark
   ;; - tabs
   ;; - trailing
   ;;
   ;; whitespace-empty is disabled, i.e. this Face has no styling. The idea is
   ;; to include the empty Face in whitespace-style due to the function
   ;; whitespace-cleanup using this variable in order to determine how to remove
   ;; certain whitespace characters.
   ;;
   ;; By contrast, whitespace-newline does have applicable styling when the user
   ;; includes the newline-mark Face in whitespace-style.

   `(whitespace-empty                  ((t (:background nil :foreground nil))))
   `(whitespace-hspace                 ((t (:background ,kuronami-black0 :foreground ,kuronami-black2))))
   `(whitespace-indentation            ((t (:inherit whitespace-hspace))))
   `(whitespace-line                   ((t (:inherit whitespace-hspace))))
   `(whitespace-missing-newline-at-eof ((t (:background ,kuronami-yellow0 :foreground ,kuronami-black2))))
   `(whitespace-newline                ((t (:inherit whitespace-hspace))))
   `(whitespace-space                  ((t (:inherit whitespace-hspace))))
   `(whitespace-space-after-tab        ((t (:inherit whitespace-hspace))))
   `(whitespace-space-before-tab       ((t (:inherit whitespace-hspace))))
   `(whitespace-tab                    ((t (:inherit whitespace-hspace))))
   `(whitespace-trailing               ((t (:inherit whitespace-missing-newline-at-eof))))

   ;;; Third Party:

   `(corfu-current ((t (:background ,kuronami-green0)))))

  (custom-theme-set-variables
   'kuronami

   ;;; Vanilla:

   ;; TODO() Determine a more elegant way to do this?
   ;; TODO() Try adding just the color you want to change instead of referring
   ;;        to a Face with the color you want to use
   '(ibuffer-fontification-alist
     '((10 buffer-read-only
           line-number)
       (15 (and buffer-file-name
                (string-match ibuffer-compressed-file-name-regexp buffer-file-name))
           line-number)
       (20 (string-match "^\\*" (buffer-name))
           line-number)
       (25 (and (string-match "^ " (buffer-name)) (null buffer-file-name))
           italic)
       (30 (memq major-mode ibuffer-help-buffer-modes)
           line-number)
       (35 (derived-mode-p 'dired-mode)
           line-number) ; This is the color we actually want to change
       (40 (and (boundp 'emacs-lock-mode) emacs-lock-mode)
           ibuffer-locked-buffer)))
   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'kuronami)
(provide 'kuronami-theme)
;;; kuronami-theme.el ends here.
